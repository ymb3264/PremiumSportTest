<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="uploadAction.jsp" method="post" enctype="multipart/form-data">
		<input type="file" name="file"><br>
		<input type="submit" value="업로드">
	</form>
<%
	String file = (String)session.getAttribute("file");
	String directory = (String)session.getAttribute("directory");
	if(file == null) {
%>	
	<div style="width: 200px; height: 200px; background: gray">	
	이미지를 업로드해주세요
	</div>
	
<%
	} else {
%>
	<img src="<%= directory + "/" + file%>" alt="프로필 사진" width="200px" height="200px">
<%
	}
%>
<%
	String userName = (String)session.getAttribute("userName");
%>
<%= userName%>
</body>
</html>