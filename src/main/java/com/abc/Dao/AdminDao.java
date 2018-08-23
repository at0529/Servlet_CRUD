package com.abc.Dao;

import com.abc.pojo.Admin;

public interface AdminDao {

	Admin createAdmin(Admin a);
	
	Admin getAdmin(String userName, String Password);
}
