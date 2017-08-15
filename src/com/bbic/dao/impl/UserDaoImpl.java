package com.bbic.dao.impl;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.bbic.dao.daos.UserDao;
import com.bbic.domain.User;

public class UserDaoImpl implements UserDao {

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}
	
	public Session getSession() {
	    try {
	        return sessionFactory.getCurrentSession();
	    } catch (Exception e) {
	        System.out
	                .println("Open new Session with sessionFactory.openSession() method, Remenber to close it!");
	        return sessionFactory.openSession();
	    }
	}
	
	@Override
	public boolean add_User(User user) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().save(user);
			return true;	
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public boolean del_User(String usercode) {
		// TODO Auto-generated method stub
		Query query = sessionFactory.getCurrentSession().createQuery("delete from User u where u.usercode = :code");
		query.setString("code", usercode);
		query.executeUpdate();
		return true;
	}

	@Override
	public User get_User(String usercode) {
		// TODO Auto-generated method stub
		User user = new User();
		try{
			Query query = sessionFactory.getCurrentSession().createQuery("from User u where u.usercode = :code");
			query.setString("code", usercode);
			user = (User) query.uniqueResult();	
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}		
		return user;
		
	}

	@Override
	public ArrayList<User> get_AllUser() {
		// TODO Auto-generated method stub
		try{
			Query query = sessionFactory.getCurrentSession().createQuery("from User");
			return (ArrayList<User>) query.list();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
		
	}

	@Override
	public boolean up_User(String usercode, String password) {
		// TODO Auto-generated method stub
		try{
			Query query = sessionFactory.getCurrentSession().createQuery("update User u set u.usercode = :co and u.password = :pa");
			query.setString("co", usercode);
			query.setString("pa", password);
			query.executeUpdate();
			return true;
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}

	

}
