package org.ofbiz.hello3;

import java.util.Map;

import org.ofbiz.base.util.Debug;
import org.ofbiz.base.util.UtilMisc;
import org.ofbiz.entity.GenericDelegator;
import org.ofbiz.entity.GenericEntityException;
import org.ofbiz.entity.GenericValue;
import org.ofbiz.service.DispatchContext;
import org.ofbiz.service.ServiceUtil;

public class Hello3Services {
	public static final String module = Hello3Services.class.getName();

	public static Map createHelloPerson(DispatchContext dctx, Map context) {
		GenericDelegator delegator = (GenericDelegator) dctx.getDelegator();
		try {
			String helloPersonId = delegator.getNextSeqId("HelloPerson");
			Debug.logInfo("helloPersonId = " + helloPersonId, module);
			GenericValue helloPerson = delegator.makeValue("HelloPerson",
					UtilMisc.toMap("helloPersonId", helloPersonId));
			helloPerson.setNonPKFields(context);
			delegator.create(helloPerson);

			Map result = ServiceUtil.returnSuccess();
			result.put("helloPersonId", helloPersonId);
			return result;
		} catch (GenericEntityException ex) {
			return ServiceUtil.returnError(ex.getMessage());
		}
	}
}
