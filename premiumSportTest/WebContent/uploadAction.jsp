<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.File" %>
<%@ page import="com.prespo.model.vo.UserFile" %>
<%@ page import="com.prespo.model.service.UserService" %>
<%@ page import="com.prespo.model.vo.User" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="java.io.PrintWriter" %>
<%
	request.setCharacterEncoding("UTF-8");
	String userId = (String)session.getAttribute("userName");
	
	String directory = "/users/yoonmobul/premiumSportTest/profileImage";
	int maxSize = 1024 * 1024 * 100;
	String encoding = "UTF-8";
	
	MultipartRequest multipartRequest 
	= new MultipartRequest(request, directory, maxSize, encoding,
			new DefaultFileRenamePolicy());
	
	String fileName = multipartRequest.getOriginalFileName("file");
	String fileRealName = multipartRequest.getFilesystemName("file");
	
	UserService us = new UserService();
	UserFile uf = new UserFile(userId, fileName, fileRealName);
	
	int result = us.upload(uf);
	if(result > 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미지 업로드에 성공하였습니다.');");
		script.println("history.back();");
		script.println("</script>");
	} else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('파일 업로드에 실패하였습니다. 다시 시도해주세요');");
		script.println("history.back();");
		script.println("</script>");
	}
	
	session.setAttribute("file", fileRealName);
	session.setAttribute("directory", directory);
%>