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
		<form post="method" action="userJoinAction.jsp">
			<div>
				<label>아이디</label>
				<input type="text" name="userId" placeholder="아이디를 입력하세요">
			</div>
			<div>
				<label>비밀번호</label>
				<input type="password" name="userPwd">
			</div>
			<div>
				<label>이름</label>
				<input type="text" name="userName">
			</div>
<!-- 			<label>스포츠</label> -->
<!-- 			<select name="userSport"> -->
<!-- 				<option value="soccer">축구</option> -->
<!-- 				<option value="basketball">농구</option> -->
<!-- 				<option value="baseball">야구</option> -->
<!-- 				<option value="volleyball">배구</option> -->
<!-- 				<option value="tennis">테니스</option> -->
<!-- 				<option value="golf">골프</option> -->
<!-- 				<option value="ufc">UFC</option> -->
<!-- 				<option value="running">러닝</option> -->
<!-- 				<option value="weight_training">헬스</option> -->
<!-- 			</select> -->
			<button type="submit">가입하기</button>
		</form>
	</section>
</body>
</html>