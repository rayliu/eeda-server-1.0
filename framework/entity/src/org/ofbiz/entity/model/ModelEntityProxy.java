package org.ofbiz.entity.model;

/**
 * this class is for the lazyload of model entity rather than put all entity in
 * cache.
 * 
 * @author liura liuyubie@gmail.com
 */
@SuppressWarnings("serial")
public class ModelEntityProxy extends ModelEntity {
	public ModelEntityProxy(ModelEntity parent) {
		this.entityName = parent.entityName;
		saveEntityToDB();
	}

	private void saveEntityToDB() {

	}
}
