package com.bbic.dao.daos;

import java.util.ArrayList;

import com.bbic.domain.UserPer;

public interface UserPerDao {

	//测试类
	public int addUserPer(UserPer userPer);
	
	
	public int addUserPerList(ArrayList<UserPer> up);
	
	//*-------------查询类dao-----------------
	
	public UserPer selUserP_Id(String id); 
	
	public ArrayList<UserPer> selUserP_All();
	
	public ArrayList<UserPer> selUserP_Code(String usercode);
	
	public ArrayList<UserPer> selUserP_Date(String date);
	
	public ArrayList<UserPer> selUserP_Name(String username);
	
	public ArrayList<UserPer> selUserP_Name(String username,int pageNumber,int pageSize);

	public ArrayList<UserPer> selUserP_Name(String username,String date,int pageNumber,int pageSize);
	
	public ArrayList<UserPer> selUserP_Date(String date,int pageNumber,int pageSize);
	//多表链接查询user_info user_per
	
	//返回全部长度
	public long selUserP_count();
	//返回姓名长度
	public long selUserP_count(String username);
    //
	public long selUserP_countDate(String date);	
	//返回姓名加日期长度
	public long selUserP_count(String username,String date);
	
	
	
	//*-------------更新类dao------------------
	
	public int upUserP_All(UserPer userPer);
	
	public int upUserP_All(ArrayList<UserPer> userPers);
	
	//*--------------删除类dao--------------------
	
	public int delUserP_Id(String id);
	
	public int delUserP_Code(String usercode);
	
	public int delUserP_Name(String username);
	
	public int delUserP_Date(String date);
	
	
	
	
}
