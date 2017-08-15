package com.bbic.service.services;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bbic.domain.UserPer;
import com.bbic.web.model.JsonModel;
import com.bbic.web.model.TableJsonModel;

public interface MainService {

	//上传excel到服务器
	public String uploadexcel(HttpServletRequest request,HttpServletResponse response);
	//预览excel server
	public TableJsonModel showtb(String excelpath,int pageNumber,int pageSize);
	//预览excel client
	public TableJsonModel showtbtest(String excelpath);
	//保存excel到数据库
	public JsonModel saveexcel(String filepath);
}
