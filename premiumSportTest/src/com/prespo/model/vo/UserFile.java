package com.prespo.model.vo;

public class UserFile {
	private String userId;
	private String fileName;
	private String fileRealName;
	
	public UserFile() {}
	public UserFile(String userId, String fileName, String fileRealName) {
		this.userId = userId;
		this.fileName = fileName;
		this.fileRealName = fileRealName;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileRealName() {
		return fileRealName;
	}
	public void setFileRealName(String fileRealName) {
		this.fileRealName = fileRealName;
	}
}
