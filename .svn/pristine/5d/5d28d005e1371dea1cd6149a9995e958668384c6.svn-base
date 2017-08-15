package com.bbic.service.impl;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import com.bbic.dao.daos.UserPerDao;
import com.bbic.domain.UserPer;
import com.bbic.service.services.UserPerService;
import com.bbic.web.model.JsonModel;
import com.bbic.web.model.JsonSectorModel;
import com.bbic.web.model.TableJsonModel;

public class UserPerServiceImpl implements UserPerService{

	private UserPerDao userPerDao;
	
	public void setUserPerDao(UserPerDao userPerDao){
		this.userPerDao = userPerDao;
	}
	
	//搜索员工绩效
	@Override
	public TableJsonModel searchtable(String username, String date,
			int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		TableJsonModel tableJsonModel = new TableJsonModel();
		try {
			
			String username1 = java.net.URLDecoder.decode(username, "UTF-8");
			System.out.println(username1);
			
			//姓名 年份月份都有
			if (username1.length()!=0&&date.length()!=0){
				tableJsonModel.setTotal(userPerDao.selUserP_count(username1, date));		
				tableJsonModel.setRows(userPerDao.selUserP_Name(username1, date, pageNumber, pageSize));	
			}else if(username1!=null&&date.length()==0){
				tableJsonModel.setTotal(userPerDao.selUserP_count(username1));
				tableJsonModel.setRows(userPerDao.selUserP_Name(username1, pageNumber, pageSize));
			}else if(username1.length()==0&&date.length()!=0){
				tableJsonModel.setTotal(userPerDao.selUserP_countDate(date));
				tableJsonModel.setRows(userPerDao.selUserP_Date(date, pageNumber, pageSize));
			}
			
		
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return tableJsonModel;
	}

	//更新员工绩效
	@Override
	public JsonModel upuserper(ArrayList<UserPer> us) {
		// TODO Auto-generated method stub
		JsonModel jsonModel = null;

		int state = userPerDao.upUserP_All(us);

		if (state == 1) {
			jsonModel = new JsonModel("修改成功");
		} else {
			jsonModel = new JsonModel("修改失败");
		}

		return jsonModel;
	}

	//删除员工绩效包括批量和单选
	@Override
	public JsonModel deluserper(String id) {
		// TODO Auto-generated method stub
		JsonModel jsonModel = null;
		int state = 0 ;	
		String[] ary = id.split(",");
		if (ary!=null){
			for(int coun = 0 ; coun<ary.length;coun++){
				state = userPerDao.delUserP_Id(ary[coun]);	
				if(state==0){
					continue;
				}
			}
		}else{
			//单id删除
			state = userPerDao.delUserP_Id(id);			
		}
		
		if (state == 1) {
			jsonModel = new JsonModel("删除成功");
		} else {
			jsonModel = new JsonModel("删除失败");
		}
		
		return jsonModel;
	}

	
	@Override
	public void In_UserPer(UserPer userPer) {
		// TODO Auto-generated method stub
		userPerDao.addUserPer(userPer);
		
	}

	//增加员工绩效
	@Override
	public JsonModel adduserper(UserPer userPer) {
		// TODO Auto-generated method stub
		JsonModel jsonModel = null;
		int state = userPerDao.addUserPer(userPer);

		if (state == 1) {
			jsonModel = new JsonModel("增加成功");
		} else {
			jsonModel = new JsonModel("增加失败");
		}

		return jsonModel;
	}

	@Override
	public ArrayList<JsonSectorModel> loaddata() {
		// TODO Auto-generated method stub
	
		
		
		return null;
	}

	

}
