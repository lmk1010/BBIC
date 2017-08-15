package com.bbic.web.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase;
import org.apache.commons.fileupload.ProgressListener;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bbic.domain.UserPer;
import com.bbic.service.services.MainService;
import com.bbic.service.services.UserInfoService;
import com.bbic.service.services.UserPerService;
import com.bbic.service.services.UserService;
import com.bbic.web.model.JsonModel;
import com.bbic.web.model.TableJsonModel;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class TableController {

	@Resource(name = "userService")
	private UserService userService;
	
	@Resource(name = "userInfoService")
	private UserInfoService userInfoService;
	
	@Resource(name = "userPerService")
	private UserPerService userPerService;
	
	@Resource(name = "mainService")
	private MainService mainService;
	
	//-----user table-----
	@RequestMapping("/searchuser.do")
	public @ResponseBody TableJsonModel returnusertable(@RequestParam("searchText") String search,@RequestParam("pageNumber") int pageNumber,@RequestParam("pageSize") int pageSize,
			@RequestParam("cata") String cata,@RequestParam("depart") String depart){
		
		System.out.println(search);
		return userInfoService.searchtable(search, cata, depart, pageNumber, pageSize);
		
	}
	
	
	
	//--------performance table-----
	//核心搜索
	@RequestMapping("/searchtable")
	public @ResponseBody TableJsonModel returntable(@RequestParam("searchText") String search,@RequestParam("pageNumber") int pageNumber,@RequestParam("pageSize") int pageSize,
			@RequestParam("month") String month,@RequestParam("year") String year){
		
		String date = year+month;
		System.out.println(search);
		return userPerService.searchtable(search, date, pageNumber, pageSize);
		
	}
	
	//修改一行数据
	@RequestMapping(value = "/saveUser", method=RequestMethod.POST)
	public @ResponseBody JsonModel saveuser(@RequestBody ArrayList<UserPer> us){
		
		return userPerService.upuserper(us);
	
	}
	
	//修改全部数据
	@RequestMapping(value = "/saveUserAll", method=RequestMethod.POST)
	public @ResponseBody JsonModel saveuserall(@RequestBody ArrayList<UserPer> us){
		
		return userPerService.upuserper(us);
	
	}
	
	//删除人员
	@RequestMapping(value = "/deleteUser", method=RequestMethod.POST)
	public @ResponseBody JsonModel deleteuser(@RequestParam("id") String id){
		
		return userPerService.deluserper(id);
	
	}
	
	//新建用户
		@RequestMapping(value = "/testuser", method=RequestMethod.POST)
		public @ResponseBody JsonModel testuser(@RequestParam("id") String id){
			
			System.out.println(id);
			JsonModel jsonModel = new JsonModel("success");
			return jsonModel;
		
		}
	
	//新建用户
	@RequestMapping(value = "/newUser", method=RequestMethod.POST)
	public @ResponseBody JsonModel newuser(@RequestParam("usercode") String usercode,@RequestParam("username") String username,@RequestParam("date") String date,@RequestParam("catagory") String catagory,@RequestParam("price") double price,@RequestParam("score") double score){
		
		System.out.println(usercode+username+date+catagory);
		UserPer userPer = new UserPer();
		userPer.setUserPer(usercode, username, date, catagory, price, score);
		return userPerService.adduserper(userPer);
	
	}
	
	// 上传excel
	@RequestMapping(value = "/uploadexcel.do", method = RequestMethod.POST)
	public @ResponseBody JsonModel uploadexcel(HttpServletRequest request,
			HttpServletResponse response,HttpSession session) {
		String filepath = mainService.uploadexcel(request, response);
		if(session.getAttribute("filepath")!=null){
			session.removeAttribute("filepath");
			session.setAttribute("filepath", filepath);
		}else{
			session.setAttribute("filepath", filepath);	
		}
		return new JsonModel("success");
	}
	
	//预览的excel server伪装分页
	@RequestMapping(value = "/showexcel", method = RequestMethod.POST)
	public @ResponseBody TableJsonModel showexcel(@RequestParam("filepath") String filepath,@RequestParam("pageNumber") int pageNumber,@RequestParam("pageSize") int pageSize) {
		return mainService.showtb(filepath,pageNumber,pageSize);

	}
	//预览测试client分页
	@RequestMapping(value = "/showexceltest", method = RequestMethod.GET)
	public @ResponseBody TableJsonModel showexcel() {
		return mainService.showtbtest("G://Tomcat//apache-tomcat-7.0.76//webapps//BBIC//WEB-INF//upload//2017//4//af48ae7e-8247-431b-81f5-18473eeb2351_邮政测试.xls");

	}
	
	//预览
	@RequestMapping(value = "/showexcel.do", method = RequestMethod.POST)
	public @ResponseBody ArrayList<?> showdaexcel(@RequestParam("showtag") int showtag,HttpSession session) {
		if (session.getAttribute("filepath")!=null){
			String filepath = (String) session.getAttribute("filepath");
			return mainService.showtbtest(filepath).getRows();
		}else{
			ArrayList<String> us = new ArrayList<String>();
			us.add("no data");
			return us;
		}	

	}
	
	//将excel存入数据库
	@RequestMapping(value = "/saveexcel.do", method = RequestMethod.POST)
	public @ResponseBody JsonModel saveexcel(@RequestParam("uptag") int uptag,HttpSession session){
		    String filepath = (String) session.getAttribute("filepath");
			session.removeAttribute("filepath");
			System.err.println("save-----"+filepath);
			return mainService.saveexcel(filepath);	
	}
	
	//将session数据库
		@RequestMapping(value = "/delexcelpath.do", method = RequestMethod.POST)
		public void delsessionexcel(@RequestParam("deltag") int deltag,HttpSession session){
			    System.out.println(session.getAttribute("filepath"));
				session.removeAttribute("filepath");
				if(session.getAttribute("filepath")!=null){
					System.out.println("删除失败");
				}else{
					System.out.println("删除成功");
				}
		}
	
	
	
}
