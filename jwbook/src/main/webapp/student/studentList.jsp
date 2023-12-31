<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 목록</title>
<style>
	table{
		border-collapse: collapse;
	}
	table th, td{
		border: 1px solid #ccc;
		padding: 10px;
	}
</style>
</head>
<body>
	<h2>학생 목록</h2>
	<hr>
	<table>
		<tr>
			<th>id</th> <th>이름</th> <th>대학</th> <th>생일</th> <th>이메일</th>
		</tr>
		<c:forEach var="s" varStatus="i" items="${students}">
		<tr>
			<td>${i.count}</td>
			<td>${s.username}</td>
			<td>${s.univ}</td>
			<td>${s.birth}</td>
			<td>${s.email}</td>
		</tr>
		</c:forEach>
	</table>
	<hr>
	
	<h2>학생 추가</h2>
	<hr>
	<form action="/jwbook/scontrol?action=insert" method="post">
		<ul>
			<li>
				<label>이름</label>
				<input type="text" name="username">
			</li>
			<li>
				<label>대학</label>
				<input type="text" name="univ">
			</li>
			<li>
				<label>생일</label>
				<input type="text" name="birth">
			</li>
			<li>
				<label>이메일</label>
				<input type="text" name="email">
			</li>
		</ul>
		<button type="submit">등록</button>
		<button type="reset">취소</button>
	</form>
</body>
</html>