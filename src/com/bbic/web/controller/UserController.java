package com.bbic.web.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bbic.domain.UserInfo;
import com.bbic.service.services.UserInfoService;
import com.bbic.service.services.UserService;

@Controller
public class UserController {

	@Resource(name = "userService")
	private UserService userService;
	
	@Resource(name = "userInfoService")
	private UserInfoService userInfoService;
	
	@RequestMapping(value = "/login.do", method=RequestMethod.POST)
	public String loginuser(@RequestParam("username") String usercode,@RequestParam("password") String password,HttpSession session,HttpServletRequest request){
		if(userService.loginUser(usercode, password)==1){
			session.setAttribute("username", usercode);
			session.setAttribute("userinfo", userInfoService.get_UserInfo(usercode));
			return "redirect:index.do";
		}else{
			System.out.println("进来了");
			request.setAttribute("message", "用户名密码错误");
			return "redirect:login.jsp";
		}	
	}
	
	@RequestMapping(value = "/logout.do", method=RequestMethod.GET)
	public String loginuser(HttpSession session){
		session.invalidate();
		return "redirect:login.jsp";
	}
	
}
