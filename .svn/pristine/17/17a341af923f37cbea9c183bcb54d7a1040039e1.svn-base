package com.bbic.test;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.ArrayList;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bbic.domain.User;
import com.bbic.domain.UserInfo;
import com.bbic.domain.UserPer;

import com.bbic.service.services.UserInfoService;
import com.bbic.service.services.UserPerService;

import com.bbic.service.services.UserService;
import com.bbic.web.model.TableJsonModel;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class testspring {
	
	@Test
	public void testapp(){
		String xmlpath = "spring-common.xml";
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext(xmlpath);
		UserPerService service = (UserPerService) applicationContext.getBean("userPerService");
		//System.out.println(service.getuserperid("2c948a895ba2bb47015ba2bb497e0000"));
		
		
		UserPer userPer = new UserPer();
		userPer.setUsername("lmk");
		userPer.setUsercode("19951010");
		userPer.setCatagory("00104");
		userPer.setDate("201704");
		userPer.setPrice(12422.1);
		userPer.setScore(212.2);
		
		service.In_UserPer(userPer);
		
		/*
		ArrayList<UserPer> a = service.getAllUserPer();
		for (UserPer p : a){
			System.out.println(p);
		}
		TableJsonModel aq = new TableJsonModel();
		aq.setTotal(100);
		aq.setRows(a);
		
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			System.out.println(objectMapper.writeValueAsString(aq));
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		*/
		//UserPerService us  = (UserPerService) applicationContext.getBean("userPerService");
		//UserPerformance userPerformance  = new UserPerformance("19951010", "lmk", "20161212", "01001", 1212.2, 125.5);
		//us.addUserPer(userPerformance);
		
		
		
		/*
		UserInfoService us = (UserInfoService) applicationContext.getBean("userInfoService");
		UserInfo userInfo = new UserInfo();
	
		userInfo.setUsercode("19951010");
		userInfo.setUsername("lmk");
		userInfo.setUserauthority("1");
		userInfo.setUsercatagory("a类");
		userInfo.setUserdepartment("邮政");
		userInfo.setUserimg("img/avatar5.png");
		us.addUserInfo(userInfo);
		*/
		
        /*
          UserService us = (UserService) applicationContext.getBean("userService");
		User user = new User();
		user.setPassword("1010");
		user.setUsercode("19951010");
		us.adduser(user);
		
		*/
		
}
}
	
