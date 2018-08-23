package com.abc.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.abc.hibernateUtil.HibernateUtil;
import com.abc.pojo.Customer;


public class CustomerDaoImpl implements CustomerDao {

	@Override
	public Customer getCustomer(int id) {
		Session s= null;
		try {
			s=HibernateUtil.openSession();
			Query query= s.createQuery("from Customer where cust_id= :id");
			query.setParameter("id", id);
			Customer c=(Customer) query.uniqueResult();
			return c;
		}finally {
			s.close();
		}
	}
	
	@Override
	public Customer createCustomer(Customer c) {
		Session s= null;
		Transaction t= null;
		try {
			s= HibernateUtil.openSession();
			t=s.beginTransaction();
			s.save(c);
			t.commit();
			return c;
			
		}catch(Exception e) {
			e.printStackTrace();
			t.rollback();
		}
		finally {
			s.close();
		}
		return  null;
		
	}
	
	@Override
	public Customer updateCustomer(Customer c) {
		Session s= null;
		Transaction t= null;
		try {
			s= HibernateUtil.openSession();
			t=s.beginTransaction();
			s.update(c);
			t.commit();
			return c;
		} catch(Exception e ) {
			e.printStackTrace();
			t.rollback();
		} finally {
			s.close();
		}
		return null;
	}
	
	@Override
	public boolean deleteCustomer(int id) {
		Session s= null;
		Transaction t= null;
		try {
			s=HibernateUtil.openSession();
			t=s.beginTransaction();
			Customer c= (Customer) s.get(Customer.class, id);
			if(c != null) {
				s.delete(c);
				t.commit();
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
			t.rollback();
		} finally {
			s.close();
		}
		return false;
	}


}
