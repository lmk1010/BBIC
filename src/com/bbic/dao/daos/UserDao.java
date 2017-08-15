package com.bbic.dao.daos;

import java.util.ArrayList;

import com.bbic.domain.User;

public interface UserDao {

	//新增用户
	public boolean add_User(User user);
	//删除用户
	public boolean del_User(String usercode);
	//获取指定用户
	public User get_User(String usercode);
	//获取全部用户
	public ArrayList<User> get_AllUser();
	//更新用户信息
	public boolean up_User(String usercode,String password);
}
