package com.bbic.dao.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Blob;
import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.bbic.dao.daos.UserInfoDao;
import com.bbic.domain.UserInfo;
import com.bbic.domain.UserPer;

public class UserInfoDaoImpl implements UserInfoDao{
	
    private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}
	

	@Override
	public int add_UserInfo(UserInfo userInfo) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().save(userInfo);
			return 1;		
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 2;
		}
		
	}


	@Override
	public UserInfo sel_UserInfo(String usercode) {
		// TODO Auto-generated method stub
		try{
			Query query = sessionFactory.getCurrentSession().createQuery("from UserInfo u where u.usercode = :code");
			query.setString("code", usercode);
			UserInfo userInfo = (UserInfo) query.uniqueResult();
			return userInfo;	
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("异常 by userinfo-dao");
			
			return null;
		}
		
	}


	@Override
	public long sel_UserInfocountDep() {
		// TODO Auto-generated method stub
		try{
			Query query = sessionFactory.getCurrentSession().createQuery("select count(userdepartment) from UserInfo u");
		    return (Long) query.uniqueResult();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
		
	}


	@Override
	public ArrayList<UserInfo> sel_UserInfo_tball(String username, String cata,
			String depart, int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
				try{
					Query query = sessionFactory.getCurrentSession().createQuery("from UserInfo u where u.username = :us and u.userauthority = :ca and u.userdepartment = :de");
					query.setString("us", username);
					query.setString("ca", cata);
					query.setString("de", depart);
					query.setFirstResult((pageNumber-1)*pageSize);
					query.setMaxResults(pageSize);
					return (ArrayList<UserInfo>) query.list();	
				}catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
					return null;
				}
	}


	@Override
	public ArrayList<UserInfo> sel_UserInfo_tbnc(String username, String cata,
			int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		try{
			Query query = sessionFactory.getCurrentSession().createQuery("from UserInfo u where u.username = :us and u.userauthority = :ca");
			query.setString("us", username);
			query.setString("ca", cata);
			query.setFirstResult((pageNumber-1)*pageSize);
			query.setMaxResults(pageSize);
			return (ArrayList<UserInfo>) query.list();	
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}


	@Override
	public ArrayList<UserInfo> sel_UserInfo_tbn(String username,
			int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		try{
			Query query = sessionFactory.getCurrentSession().createQuery("from UserInfo u where u.username = :us");
			query.setString("us", username);
			query.setFirstResult((pageNumber-1)*pageSize);
			query.setMaxResults(pageSize);
			return (ArrayList<UserInfo>) query.list();	
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}


	@Override
	public long sel_UserInfo_countn(String username) {
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
	public long sel_UserInfo_countnc(String username, String cata) {
		// TODO Auto-generated method stub
		try{
			Query query = sessionFactory.getCurrentSession().createQuery("select count(*) from UserPer u where u.username = :us and u.userauthority = :ca");
			query.setString("us", username);
			query.setString("ca", cata);
			return (Long) query.uniqueResult();	
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}


	@Override
	public long sel_UserInfo_countncd(String username, String cata,
			String depart) {
		// TODO Auto-generated method stub
		try{
			Query query = sessionFactory.getCurrentSession().createQuery("select count(*) from UserPer u where u.username = :us and u.userauthority = :ca and u.userdepartment = :de");
			query.setString("us", username);
			query.setString("ca", cata);
			query.setString("de", depart);
			return (Long) query.uniqueResult();	
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}

}
