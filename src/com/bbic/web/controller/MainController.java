package com.bbic.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	
	//动态跳转
	@RequestMapping(value="/{urltarget}")
	public String skip(@PathVariable String urltarget){
		return urltarget;
	}
	
	/*
	@RequestMapping("/main.do")
	public String ShowMain(){
		return "main";
	}
	
	@RequestMapping("/flot.do")
	public String Showflot(){
		return "flot";
	}
	
	@RequestMapping("/index.do")
	public String Showindex(){
		return "index";
	}
	
	@RequestMapping("/table.do")
	public String Showtable(){
		return "table";
	}
	
	@RequestMapping("/upload.do")
	public String Showupload(){
		return "upload";
	}
	
	@RequestMapping("/userprofile.do")
	public String Showuserprofile(){
		return "userprofile";
	}
	
	@RequestMapping("/bengbu.do")
	public String Showbengbu(){
		return "bengbu";
	}
	
	@RequestMapping("/subbranch.do")
	public String Showsubbranch(){
		return "subbranch";
	}
	
	@RequestMapping("/branch.do")
	public String Showbranch(){
		return "branch";
	}
	
	@RequestMapping("/usermanager.do")
	public String Showuser(){
		return "usermanager";
	}
	
	@RequestMapping("/userchange.do")
	public String Showuserchange(){
		return "userchange";
	}
	
	@RequestMapping("/messagetool.do")
	public String Showmessagetool(){
		return "messagetool";
	}
	*/
	
	
}
