package com.bbic.dao.impl;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.bbic.dao.daos.UserPerDao;
import com.bbic.domain.UserPer;

public class UserPerDaoImpl implements UserPerDao{

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	@Override
	public int addUserPer(UserPer userPer) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().save(userPer);
			return 1;
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
		
	}


	@Override
	public int addUserPerList(ArrayList<UserPer> up) {
		// TODO Auto-generated method stub
		int count = 0;
		Session ss = sessionFactory.getCurrentSession();
		try{
			for (UserPer p : up){
				if (count%100==0){
					ss.flush();
					ss.clear();
				}
				ss.save(p);
				count++;
			}
			return 1;
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
			
		}
	}


	@Override
	public UserPer selUserP_Id(String id) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.getCurrentSession();
		try{
			Query query = ss.createQuery("from UserPer u where u.id = :id");
			query.setString("id", id);
			return (UserPer) query.uniqueResult();
//			return (UserPer) ss.get(UserPer.class, id);
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		   return null;
		}
	}


	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<UserPer> selUserP_Code(String usercode) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.getCurrentSession();
		try{
			Query query = ss.createQuery("from UserPer u where u.usercode = :us");
			query.setString("us", usercode);
			return (ArrayList<UserPer>) query.list();	
			
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}


	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<UserPer> selUserP_Date(String date) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.getCurrentSession();
		try{
			Query query = ss.createQuery("from UserPer u where u.date = :da");
			query.setString("da", date);
			return (ArrayList<UserPer>) query.list();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}


	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<UserPer> selUserP_Name(String username) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.getCurrentSession();
		try{
			Query query = ss.createQuery("from UserPer u where u.username = :us");
			query.setString("us", username);
			return (ArrayList<UserPer>) query.list();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public long selUserP_count(String username, String date) {
		// TODO Auto-generated method stub
		try{
			Query query = sessionFactory.getCurrentSession().createQuery("select count(*) from UserPer u where u.username = :us and u.date like :da");
			query.setString("us", username);
			query.setString("da", "%"+date+"%");
			return (Long) query.uniqueResult();	
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
        
	}


	@Override
	public long selUserP_count() {
		// TODO Auto-generated method stub
		try{
			Query query = sessionFactory.getCurrentSession().createQuery("select count(*) from UserPer");		
			return (Long) query.uniqueResult();	
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
		
	}

	@Override
	public long selUserP_count(String username) {
		// TODO Auto-generated method stub
		try{
			Query query = sessionFactory.getCurrentSession().createQuery("select count(*) from UserPer u where u.username = :us");
			query.setString("us", username);
			return (Long) query.uniqueResult();	
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public long selUserP_countDate(String date) {
		// TODO Auto-generated method stub
		try{
			Query query = sessionFactory.getCurrentSession().createQuery("select count(*) from UserPer u where u.date like :da");
			query.setString("da", "%"+date+"%");
			return (Long) query.uniqueResult();	
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}


	
	
	@Override
	public int upUserP_All(UserPer userPer) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().update(userPer);
			return 1;
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
		
	}
	
	@Override
	public int upUserP_All(ArrayList<UserPer> userPers) {
		// TODO Auto-generated method stub
		try{
			for (UserPer userPer : userPers){
				sessionFactory.getCurrentSession().update(userPer);
			}		
			return 1;
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}


	@Override
	public int delUserP_Id(String id) {
		// TODO Auto-generated method stub
		try{
			Query query = sessionFactory.getCurrentSession().createQuery("delete from UserPer u where u.id = :ids");
			query.setString("ids", id);
			query.executeUpdate();
			return 1;
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
		
	}


	@Override
	public int delUserP_Code(String usercode) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int delUserP_Name(String username) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int delUserP_Date(String date) {
		// TODO Auto-generated method stub
		return 0;
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<UserPer> selUserP_All() {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.getCurrentSession();
		try{
			Query query = ss.createQuery("from UserPer");
			return (ArrayList<UserPer>) query.list();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}


	

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<UserPer> selUserP_Name(String username, int pageNumber,
			int pageSize) {
		// TODO Auto-generated method stub
		try{
			Query query = sessionFactory.getCurrentSession().createQuery("from UserPer u where u.username = :us");
			query.setString("us", username);
			query.setFirstResult((pageNumber-1)*pageSize);
			query.setMaxResults(pageSize);
			return (ArrayList<UserPer>) query.list();	
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<UserPer> selUserP_Name(String username, String date,
			int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		try{
			Query query = sessionFactory.getCurrentSession().createQuery("from UserPer u where u.username = :us and u.date like :da");
			query.setString("us", username);
			query.setString("da", "%"+date+"%");
			query.setFirstResult((pageNumber-1)*pageSize);
			query.setMaxResults(pageSize);
			return (ArrayList<UserPer>) query.list();	
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<UserPer> selUserP_Date(String date, int pageNumber,
			int pageSize) {
		// TODO Auto-generated method stub
		try{
			Query query = sessionFactory.getCurrentSession().createQuery("from UserPer u where u.date like :da");
			query.setString("da", "%"+date+"%");
			query.setFirstResult((pageNumber-1)*pageSize);
			query.setMaxResults(pageSize);
			return (ArrayList<UserPer>) query.list();	
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}



}
