package com.abc.service;

import com.abc.Dao.CustomerDao;
import com.abc.Dao.CustomerDaoImpl;
import com.abc.pojo.Customer;

public class CustomerService {

	private CustomerDao cd= null;
	
	public boolean addCustomer(Customer c) {
		boolean flag=false;
		if(flag ==false) {
			try {
				cd= new CustomerDaoImpl();
				cd.createCustomer(c);
				return true;
			} catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		return flag;
		
	}
	public Customer getCustomers(int id) {
		cd= new CustomerDaoImpl();
		Customer c=cd.getCustomer(id);
		return c;
	}
	
	public void updateCustomer(Customer c) {
		cd= new CustomerDaoImpl();
		cd.updateCustomer(c);
	}
	
	public boolean deleteCustomer(int id) {
		boolean flag;
		cd= new CustomerDaoImpl();
		flag=cd.deleteCustomer(id);
		if(flag==true) {
			return true;
		}
		
		return false;
	}
}
