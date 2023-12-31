<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 서블릿 매핑</title>
<style>
	ul li{list-style: none; margin: 10px;}
</style>
<script type="text/javascript">
	function checkForm(){
		let form = document.loginForm;
		let pw = form.passwd.value;
		
		if(form.uid.value == ""){
			alert("아이디를 입력해주세요");
			form.uid.focus();
			return false;
		}else if(pw == "" || pw.length < 8){
			//비밀번호는 8자 이상입력해 주세요.
			alert("비밀번호는 8자 이상 입력해주세요");
			form.passwd.select();
			return false;
		}
		else{
			form.submit();
		}
	}
</script>
</head>
<body>
	<form action="loginProcess.jsp" method="post" name="loginForm">
		<ul>
			<li>
				<label for="uid">아이디</label>
				<input type="text" name="uid" id="uid">
			</li>
			<li>
				<label for="passwd">비밀번호</label>
				<input type="password" name="passwd" id="passwd">
			</li>
			<li>
				<input type="button" value="로그인" onclick="checkForm()">
			</li>
		</ul>
	</form>
</body>
</html>