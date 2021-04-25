package com.prespo.model.vo;

public class User {
	private String userId;
	private String userPwd;
	private String userName;
	private String userSport;
	
	public User() {}
	public User(String userId, String userPwd) {
		this.userId = userId;
		this.userPwd = userPwd;
	}
	public User(String userId, String userPwd, String userName) {
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
	}
	public User(String userId, String userPwd, String userName, String userSport) {
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userSport = userSport;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserSport() {
		return userSport;
	}
	public void setUserSport(String userSport) {
		this.userSport = userSport;
	}
	
}
