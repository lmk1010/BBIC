package com.bbic.dao.daos;

import java.util.ArrayList;

import com.bbic.domain.UserInfo;

public interface UserInfoDao {

	//增加用户信息
	public int add_UserInfo(UserInfo userInfo);
	//获取用户信息
	public UserInfo sel_UserInfo(String usercode);	
	//获取部门的个数
	public long sel_UserInfocountDep();
	
	//----------------查询类---------------
	public ArrayList<UserInfo> sel_UserInfo_tball(String username,String cata,String depart,int pageNumber,int pageSize);
	
	public ArrayList<UserInfo> sel_UserInfo_tbnc(String username,String cata,int pageNumber,int pageSize);
	
	public ArrayList<UserInfo> sel_UserInfo_tbn(String username,int pageNumber,int pageSize);
	
	public long sel_UserInfo_countn(String username);
	
	public long sel_UserInfo_countnc(String username,String cata);
	
	public long sel_UserInfo_countncd(String username,String cata,String depart);

}
