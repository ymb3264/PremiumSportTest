<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.prespo.model.service.UserService"%>
<%@ page import="com.prespo.model.vo.User"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
	String userId = null;
	String userPwd = null;
	
	if(request.getParameter("userId") != null) {
		userId = request.getParameter("userId");
	}
	if(request.getParameter("userPwd") != null) {
		userPwd = request.getParameter("userPwd");
	}
	if(userId.equals("") || userPwd.equals("")) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
	} else {
		UserService uService = new UserService();
		User us = new User(userId, userPwd);
		User user = uService.login(us);
		if(user != null) {
			PrintWriter script = response.getWriter();
			session.setAttribute("userId", userId);
			session.setAttribute("userName", user.getUserName());
			script.println("<script>");
			script.println("alert('로그인 되었습니다.');");
			script.println("location.href = 'userProfile.jsp';");
			script.println("</script>");
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인이 실패하였습니다. 로그인 정보를 확인해 주세요.');");
			script.println("history.back();");
			script.println("</script>");
		}
	}
%>