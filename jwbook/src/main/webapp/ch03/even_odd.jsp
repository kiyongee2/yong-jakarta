<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="process2.jsp" method="get">
		<label for="num">숫자</label>
		<input type="text" name="num" id="num">
		<input type="submit" value="계산">
	</form>
	<!-- input 속성 pattern=[0-9]+ -->
</body>
</html>