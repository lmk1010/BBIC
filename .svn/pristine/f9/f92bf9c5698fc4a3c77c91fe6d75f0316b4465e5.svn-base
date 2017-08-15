package com.bbic.service.impl;

import com.bbic.dao.daos.UserDao;
import com.bbic.domain.User;
import com.bbic.service.services.UserService;

public class UserServiceImpl implements UserService {

	private UserDao userDao;

	public void setUserDao(UserDao userdao) {
		this.userDao = userdao;
	}

	@Override
	public int loginUser(String usercode, String password) {
		// TODO Auto-generated method stub
		User user = new User();
		try {
			user = userDao.get_User(usercode);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("failed login");
		}
		if (user != null) {
			if (user.getPassword().equals(password)) {
				return 1;
			} else {
				return 2;
			}
		} else {
			return 0;
		}

	}

	@Override
	public void adduser(User user) {
		// TODO Auto-generated method stub
		userDao.add_User(user);
	}

}
