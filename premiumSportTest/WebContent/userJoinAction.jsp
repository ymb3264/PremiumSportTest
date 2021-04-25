<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.prespo.model.service.UserService"%>
<%@ page import="com.prespo.model.vo.User"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
	String userId = null;
	String userPwd = null;
	String userName = null;
// 	String userSport = null;
	
	if(request.getParameter("userId") != null) {
		userId = request.getParameter("userId");
	}
	if(request.getParameter("userPwd") != null) {
		userPwd = request.getParameter("userPwd");
	}
	if(request.getParameter("userName") != null) {
		userName = request.getParameter("userName");
	}
// 	if(request.getParameter("userSport") != null) {
// 		userSport = request.getParameter("userSport");
// 	}
	if(userId.equals("") || userPwd.equals("") || userName.equals("")) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
	} else {
		UserService uService = new UserService();
		User us = new User(userId, userPwd, userName);
		int result = uService.join(us);
		if(result > 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('회원가입이 완료되었습니다.');");
			script.println("location.href = 'userLogin.jsp';");
			script.println("</script>");
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('회원가입이 실패하였습니다. 다시 시도해 주세요.');");
			script.println("history.back();");
			script.println("</script>");
		}
	}
%>