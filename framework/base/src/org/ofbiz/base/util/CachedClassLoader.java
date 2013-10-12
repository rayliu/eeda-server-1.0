/*******************************************************************************
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 *******************************************************************************/
/* This file has been modified by Open Source Strategies, Inc. */
package org.ofbiz.base.util;

import java.net.URL;
import java.net.URLClassLoader;
import java.util.Iterator;
import java.util.Map;
import java.util.ServiceLoader;
import java.util.Set;

import javolution.util.FastMap;
import javolution.util.FastSet;
import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;

/**
 * Caching Class Loader
 * 
 */
public class CachedClassLoader extends URLClassLoader {

	public interface Init {
		void loadClasses(ClassLoader loader) throws ClassNotFoundException;
	}

	public static final String module = CachedClassLoader.class.getName();
	public static final Map<String, Class<?>> globalClassNameClassMap = FastMap.newInstance();
	public static final Set<String> globalBadClassNameSet = FastSet.newInstance();
	public static final Map<String, URL> globalResourceMap = FastMap.newInstance();
	public static final Set<String> globalBadResourceNameSet = FastSet.newInstance();

	private String contextName;
	protected final Map<String, Class<?>> localClassNameClassMap = FastMap.newInstance();
	protected final Set<String> localBadClassNameSet = FastSet.newInstance();
	protected final Map<String, URL> localResourceMap = FastMap.newInstance();
	protected final Set<String> localBadResourceNameSet = FastSet.newInstance();

	static {
		// setup some commonly used classes...
		registerClass(java.lang.Object.class);
		registerClass(java.lang.String.class);
		registerClass(java.lang.Boolean.class);
		registerClass(java.math.BigDecimal.class);
		registerClass(java.lang.Double.class);
		registerClass(java.lang.Float.class);
		registerClass(java.lang.Long.class);
		registerClass(java.lang.Integer.class);
		registerClass(java.lang.Short.class);
		registerClass(java.lang.Byte.class);
		registerClass(java.lang.Character.class);
		registerClass(java.sql.Timestamp.class);
		registerClass(java.sql.Time.class);
		registerClass(java.sql.Date.class);
		registerClass(java.util.Locale.class);
		registerClass(java.util.Date.class);
		registerClass(java.util.Collection.class);
		registerClass(java.util.List.class);
		registerClass(java.util.Set.class);
		registerClass(java.util.Map.class);
		registerClass(java.util.HashMap.class);
		registerClass(java.util.TimeZone.class);
		registerClass(java.util.Locale.class);

		// setup the primitive types
		registerClass(Boolean.TYPE);
		registerClass(Short.TYPE);
		registerClass(Integer.TYPE);
		registerClass(Long.TYPE);
		registerClass(Float.TYPE);
		registerClass(Double.TYPE);
		registerClass(Byte.TYPE);
		registerClass(Character.TYPE);

		// setup OFBiz classes
		registerClass(org.ofbiz.base.util.TimeDuration.class);

		ClassLoader loader = Thread.currentThread().getContextClassLoader();
		Iterator<Init> cachedClassLoaders = ServiceLoader.load(Init.class, loader).iterator();
		while (cachedClassLoaders.hasNext()) {
			Init cachedClassLoader = cachedClassLoaders.next();
			try {
				cachedClassLoader.loadClasses(loader);
			} catch (Exception e) {
				Debug.logError(e, "Could not pre-initialize dynamically loaded class: ", module);
			}
		}
	}

	/**
	 * Ray 2013-10-1
	 * 
	 * @return
	 */
	private static Cache getEhcache() {
		return CacheManager.getInstance().getCache("eedaClassLoaderCache");
	}

	/*
	 * try to reduce mem, so put loaded class in disk not all in mem. Ray
	 * 2013-10-1
	 */
	private static void putClassInEhcache(String className, Class<?> theClass) {
		net.sf.ehcache.Cache cache = getEhcache();

		net.sf.ehcache.Element element = new net.sf.ehcache.Element(className, theClass);
		cache.put(element);
	}

	private static Class<?> getClassInEhcache(String className) {
		net.sf.ehcache.Cache cache = getEhcache();

		net.sf.ehcache.Element element = cache.get(className);
		if (element == null)
			return null;
		Object value = element.getObjectValue();
		Class<?> me = (Class<?>) value;
		return me;
	}

	/**
	 * Registers a <code>Class</code> with the class loader. The class will be
	 * added to the global class cache, and an alias name will be created.
	 * <p>
	 * The alias name is the right-most portion of the binary name. Example: the
	 * alias for <code>java.lang.Object</code> is <code>Object</code>. If the
	 * alias already exists for another class, then no alias is created (the
	 * previously aliased class takes precedence).
	 * </p>
	 * 
	 * @param theClass
	 *            The <code>Class</code> to register
	 * @throws IllegalArgumentException
	 *             If <code>theClass</code> is an array
	 */
	public static void registerClass(Class<?> theClass) {
		if (theClass.isArray()) {
			throw new IllegalArgumentException("theClass cannot be an array");
		}
		synchronized (globalClassNameClassMap) {
			Object obj = getGlobalClassNameClassMap(theClass.getName());
			if (obj == null) {
				putGlobalClassNameClassMap(theClass.getName(), theClass);
			}
			String alias = theClass.getName();
			int pos = alias.lastIndexOf(".");
			if (pos != -1) {
				alias = alias.substring(pos + 1);
			}
			obj = getGlobalClassNameClassMap(alias);
			if (obj == null) {
				putGlobalClassNameClassMap(alias, theClass);
			}
			if (Debug.verboseOn()) {
				Debug.logVerbose("Registered class " + theClass.getName() + ", alias " + alias, module);
			}
		}
	}

	private static void putGlobalClassNameClassMap(String className, Class<?> theClass) {
		// putClassInEhcache(className, theClass);
		globalClassNameClassMap.put(className, theClass);
	}

	private static Class<?> getGlobalClassNameClassMap(String className) {
		// Class<?> theClass = getClassInEhcache(className);
		Class<?> theClass = globalClassNameClassMap.get(className);

		return theClass;
	}

	public CachedClassLoader(URL[] url, ClassLoader parent, String contextName) {
		super(url, parent);
		this.contextName = contextName;
		if (Debug.verboseOn()) {
			Package[] paks = this.getPackages();
			StringBuilder pakList = new StringBuilder();
			for (int i = 0; i < paks.length; i++) {
				pakList.append(paks[i].getName());
				if (i < (paks.length - 1)) {
					pakList.append(":");
				}
			}
			Debug.logVerbose("Cached ClassLoader Packages : " + pakList.toString(), module);
		}
	}

	public CachedClassLoader(ClassLoader parent, String contextName) {
		this(new URL[0], parent, contextName);
	}

	public CachedClassLoader(URL[] url, ClassLoader parent) {
		this(url, parent, "__globalContext");
	}

	@Override
	public String toString() {
		return "org.ofbiz.base.util.CachedClassLoader(" + contextName + ") / " + getParent().toString();
	}

	@Override
	public Class<?> loadClass(String name) throws ClassNotFoundException {
		return loadClass(name, false);
	}

	@Override
	protected Class<?> loadClass(String name, boolean resolve) throws ClassNotFoundException {

		// check global common classes, ie for all instances
		Class<?> theClass = getGlobalClassNameClassMap(name);
		if (theClass != null) {
			return theClass;
		}

		// check local classes, ie for this instance
		theClass = this.localClassNameClassMap.get(name);
		if (theClass != null) {
			return theClass;
		}

		// make sure it is not a known bad class name
		if (this.localBadClassNameSet.contains(name) || globalBadClassNameSet.contains(name)) {
			if (Debug.verboseOn())
				Debug.logVerbose("Cached loader got a known bad class name: [" + name + "]", module);
			throw new ClassNotFoundException("Cached loader got a known bad class name: " + name);
		}

		if (Debug.verboseOn())
			Debug.logVerbose("Cached loader cache miss for class name: [" + name + "]", module);

		synchronized (this) {
			try {
				theClass = super.loadClass(name, resolve);
				if (isGlobalPath(name)) {
					synchronized (globalClassNameClassMap) {
						putGlobalClassNameClassMap(name, theClass);
					}
				} else {
					this.localClassNameClassMap.put(name, theClass);
				}
			} catch (ClassNotFoundException e) {
				// Debug.logInfo(e, module);
				if (Debug.verboseOn())
					Debug.logVerbose("Remembering invalid class name: [" + name + "]", module);
				if (isGlobalPath(name)) {
					synchronized (globalBadClassNameSet) {
						globalBadClassNameSet.add(name);
					}
				} else {
					this.localBadClassNameSet.add(name);
				}
				throw e;
			}
		}
		return theClass;
	}

	@Override
	public URL getResource(String name) {
		// check global common resources, ie for all instances
		URL theResource = globalResourceMap.get(name);
		if (theResource != null) {
			return theResource;
		}

		// check local resources, ie for this instance
		theResource = this.localResourceMap.get(name);
		if (theResource != null) {
			return theResource;
		}

		// make sure it is not a known bad resource name
		if (localBadResourceNameSet.contains(name) || globalBadResourceNameSet.contains(name)) {
			if (Debug.verboseOn())
				Debug.logVerbose("Cached loader got a known bad resource name: [" + name + "]", module);
			return null;
		}

		if (Debug.verboseOn())
			Debug.logVerbose("Cached loader cache miss for resource name: [" + name + "]", module);
		// Debug.logInfo("Cached loader cache miss for resource name: [" + name
		// + "]", module);

		synchronized (this) {
			theResource = super.getResource(name);
			if (theResource == null) {
				if (Debug.verboseOn())
					Debug.logVerbose("Remembering invalid resource name: [" + name + "]", module);
				// Debug.logInfo("Remembering invalid resource name: [" + name +
				// "]", module);
				if (isGlobalPath(name)) {
					synchronized (globalBadResourceNameSet) {
						globalBadResourceNameSet.add(name);
					}
				} else {
					this.localBadResourceNameSet.add(name);
				}
			} else {
				if (isGlobalPath(name)) {
					synchronized (globalBadResourceNameSet) {
						globalResourceMap.put(name, theResource);
					}
				} else {
					this.localResourceMap.put(name, theResource);
				}
			}
		}
		return theResource;
	}

	protected boolean isGlobalPath(String name) {
		if (name.startsWith("java.") || name.startsWith("java/") || name.startsWith("/java/"))
			return true;
		if (name.startsWith("javax.") || name.startsWith("javax/") || name.startsWith("/javax/"))
			return true;
		if (name.startsWith("sun.") || name.startsWith("sun/") || name.startsWith("/sun/"))
			return true;
		if (name.startsWith("org.ofbiz."))
			return true;
		return false;
	}
}
