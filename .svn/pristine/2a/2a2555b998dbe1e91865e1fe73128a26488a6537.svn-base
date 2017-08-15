package com.bbic.service.services;

import java.util.ArrayList;

import com.bbic.domain.UserPer;
import com.bbic.web.model.JsonModel;
import com.bbic.web.model.JsonSectorModel;
import com.bbic.web.model.TableJsonModel;

public interface UserPerService {

	public void In_UserPer(UserPer userPer);
	//---------------------------------业务----------------------------//
	//搜索返回数据
	public TableJsonModel searchtable(String username,String date,int pageNumber,int pageSize);
	//修改用户数据
	public JsonModel upuserper(ArrayList<UserPer> us);
	//删除用户数据
	public JsonModel deluserper(String id);
	//新增用户数据
	public JsonModel adduserper(UserPer userPer);
	
	//加载扇形图的数据
	public ArrayList<JsonSectorModel> loaddata();
	
	
	
}
