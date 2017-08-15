package com.bbic.service.services;

import com.bbic.domain.User;

public interface UserService {

	//测试
	public void adduser(User user);

	//登陆
	public int loginUser(String usercode,String password);

}
