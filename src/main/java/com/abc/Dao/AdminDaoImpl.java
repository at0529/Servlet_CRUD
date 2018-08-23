package com.abc.Dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.abc.hibernateUtil.HibernateUtil;
import com.abc.pojo.Admin;

public class AdminDaoImpl implements AdminDao {

	@Override
	public Admin createAdmin(Admin a) {
		Session s= null;
		Transaction t= null;
		try {
			s=HibernateUtil.openSession();
			t=s.beginTransaction();
			s.save(a);
			t.commit();
			return a;
		} catch(Exception e) {
			e.printStackTrace();
			t.rollback();
		} finally {
			s.close();
		}
		return null;
	}

	@Override
	public Admin getAdmin(String userName, String password) {
		
		Session s= HibernateUtil.openSession();
		try {
			Query query= s.createQuery("from Admin as a where a.userName=:userName and a.password=:password");
			query.setParameter("userName", userName);
			query.setParameter("password", password);
			Admin a= (Admin) query.uniqueResult();
			return a;
		} finally {
			s.close();
		}
	}

}
