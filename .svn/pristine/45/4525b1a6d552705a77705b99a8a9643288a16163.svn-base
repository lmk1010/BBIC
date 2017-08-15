package com.bbic.service.impl;


import com.bbic.dao.daos.UserInfoDao;
import com.bbic.domain.UserInfo;
import com.bbic.service.services.UserInfoService;
import com.bbic.web.model.TableJsonModel;

public class UserInfoServiceImpl implements UserInfoService{

    private UserInfoDao userInfoDao;
    
    public void setUserInfoDao(UserInfoDao userInfoDao){
    	this.userInfoDao = userInfoDao;
    }
	
	
	@Override
	public int add_UserInfo(UserInfo userInfo) {
		// TODO Auto-generated method stub
		return userInfoDao.add_UserInfo(userInfo);
		
	}


	@Override
	public UserInfo get_UserInfo(String usercode) {
		// TODO Auto-generated method stub
		return userInfoDao.sel_UserInfo(usercode);
	}


	@Override
	public long get_UserInfoDepCount() {
		// TODO Auto-generated method stub
		return userInfoDao.sel_UserInfocountDep();
	}


	@Override
	public TableJsonModel searchtable(String username, String cata,
			String depart, int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		TableJsonModel tableJsonModel = new TableJsonModel();
		String cata1 = "";
		if(cata.equals("管理员")){
			cata1 = "1";
		}else{
			cata1 = "0";
		}
		
		try{
			String username1 = java.net.URLDecoder.decode(username, "UTF-8");
			
			if (username1.length()!=0&&cata.length()!=0&&depart.length()!=0){
				tableJsonModel.setTotal(userInfoDao.sel_UserInfo_countncd(username1, cata1, depart));
				tableJsonModel.setRows(userInfoDao.sel_UserInfo_tball(username1, cata1, depart, pageNumber, pageSize));
			}else if(username1.length()!=0&&cata.length()!=0&&depart.length()==0){
				tableJsonModel.setTotal(userInfoDao.sel_UserInfo_countnc(username1, cata1));
				tableJsonModel.setRows(userInfoDao.sel_UserInfo_tbnc(username1, cata1, pageNumber, pageSize));
			}else if(username1.length()!=0&&cata.length()==0&&depart.length()==0){
				tableJsonModel.setTotal(userInfoDao.sel_UserInfo_countn(username1));
				tableJsonModel.setRows(userInfoDao.sel_UserInfo_tbn(username1, pageNumber, pageSize));
			}
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return tableJsonModel;
	}

}
