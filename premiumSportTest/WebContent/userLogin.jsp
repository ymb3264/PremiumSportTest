<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<h2 class="tit_font">premiumsport</h2>
	<section id="container">
		<div>
			<form id="login" action="userLoginAction.jsp" method="post">
				<input class="i_sty1" type="text" name="userId" placeholder="아이디">
				<input class="i_sty1" type="password" name="userPwd" placeholder="비밀번호">
				<button class="btn_sty" type="submit">로그인</button>
			</form>
		</div>
		<div id="join">
			<a class="href_sty" href="userJoin.jsp">회원가입</a>
		</div>
	</section>
</body>
</html>