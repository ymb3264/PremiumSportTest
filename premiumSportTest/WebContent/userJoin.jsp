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
			<form id="login" action="userJoinAction.jsp" method="post">
				<input class="i_sty" type="text" name="userId" placeholder="아이디">
				<input class="i_sty" type="password" name="userPwd" placeholder="비밀번호">
				<input class="i_sty" type="text" name="userRealName" placeholder="성명">
				<input class="i_sty" type="text" name="userName" placeholder="사용자 이름">
				<button class="btn_sty" type="submit">가입하기</button>
			</form>
		</div>
	</section>
</body>
</html>