<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section>
		<form method="post" action="userLoginAction.jsp">
			<div>
				<label>아이디</label> 
				<input type="text" name="userId" placeholder="아이디를 입력하세요">
			</div>
			<div>
				<label>비밀번호</label> 
				<input type="password" name="userPwd">
			</div>
			<button type="submit">로그인</button>
		</form>
		<a href="userJoin.jsp">회원가입</a>
	</section>
	<img src="../premiumSportTest/porfileImage/test.jpeg" width="200px" height="200px">
</body>
</html>