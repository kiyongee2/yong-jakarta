<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	ul li{list-style: none; margin: 10px;}
</style>
</head>
<body>
	<form action="j_security_check" method="post">
		<ul>
			<li>
				<label for="uid">아이디</label>
				<input type="text" name="j_username" id="uid">
			</li>
			<li>
				<label for="passwd">비밀번호</label>
				<input type="password" name="j_password" id="passwd">
			</li>
			<li>
				<input type="submit" value="로그인">
			</li>
		</ul>
	</form>
</body>
</html>