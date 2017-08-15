package com.bbic.domain;


public class UserInfo {

	 String usercode;
	 String username;
	 String userimg;
	 String userauthority;
	 String usercatagory;
	 String userdepartment;
	 String usercompany;
	 
	 public String getUsercompany() {
		return usercompany;
	}
	public void setUsercompany(String usercompany) {
		this.usercompany = usercompany;
	}
	String getUsercode() {
		return usercode;
	}
	public void setUsercode(String usercode) {
		this.usercode = usercode;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getUserimg() {
		return userimg;
	}
	public void setUserimg(String userimg) {
		this.userimg = userimg;
	}
	public String getUserauthority() {
		return userauthority;
	}
	public void setUserauthority(String userauthority) {
		this.userauthority = userauthority;
	}
	public String getUsercatagory() {
		return usercatagory;
	}
	public void setUsercatagory(String usercatagory) {
		this.usercatagory = usercatagory;
	}
	public String getUserdepartment() {
		return userdepartment;
	}
	public void setUserdepartment(String userdepartment) {
		this.userdepartment = userdepartment;
	}
	@Override
	public String toString() {
		return "UserInfo [usercode=" + usercode + ", username=" + username
				+ ", userimg=" + userimg + ", userauthority=" + userauthority
				+ ", usercatagory=" + usercatagory + ", userdepartment="
				+ userdepartment + "]";
	}
	
	
	
	
	
}
