package com.abc.Dao;

import com.abc.pojo.Customer;

public interface CustomerDao {

	Customer getCustomer(int id);
	
	Customer createCustomer(Customer c);
	
	Customer updateCustomer(Customer c);
	
	boolean deleteCustomer(int id);
	
	
	
}
