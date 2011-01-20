package com.tnode.funambol;

import com.funambol.framework.server.Sync4jUser;
import com.funambol.framework.server.store.PersistentStoreException;
import com.funambol.framework.tools.beans.LazyInitBean;

import com.funambol.server.admin.AdminException;

import com.funambol.server.security.UserProvisioningOfficer;

public class SemiUserProvisioningOfficer extends UserProvisioningOfficer implements LazyInitBean {
    protected Sync4jUser insertUser(String userName, String password) throws AdminException, PersistentStoreException {
		throw new AdminException("Automatic user creation disabled by admin"); 
    }
}
