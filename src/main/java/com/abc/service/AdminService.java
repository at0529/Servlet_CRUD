package com.abc.service;

import com.abc.Dao.AdminDao;
import com.abc.Dao.AdminDaoImpl;
import com.abc.pojo.Admin;

public class AdminService {

	AdminDao ad= null;
	 
	public Admin getAdmin(String userName, String password) {
		boolean flag=false;
		ad= new AdminDaoImpl();
		Admin a= ad.getAdmin(userName, password);
		return a;
	}
	
	public void createAdmin(Admin a) {
		ad= new AdminDaoImpl();
		ad.createAdmin(a);	
	}
}
