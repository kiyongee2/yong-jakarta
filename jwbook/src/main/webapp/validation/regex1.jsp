<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유효성 검사</title>
<style>
	ul li{list-style: none; margin: 10px;}
</style>
<script type="text/javascript">
	function checkForm(){
		let form = document.form1;
		let name = form.name.value;
		let regex = /[A-Za-z가-힣]/;
		
		if(!regex.test(name)){
			alert("이름은 숫자로 시작할 수 없습니다.");
			document.form1.name.select();
			return false;
		}else{
			form.submit();
		}
	}
</script>
</head>
<body>
	<form action="" method="post" name="form1">
		<ul>
			<li>
				<label for="name">이름</label>
				<input type="text" name="name" id="name">
			</li>
			<li>
				<input type="button" value="등록" onclick="checkForm()">
			</li>
		</ul>
	</form>
</body>
</html>