<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
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
	<h2>상품 목록</h2>
	<hr>
	<table>
		<tr>
			<th>번호</th> <th>상품</th> <th>가격</th>
		</tr>
		<c:forEach var="product" varStatus="i" items="${products}">
		<tr>
			<td>${i.count}</td>
			<td><a href="/jwbook/pcontrol?action=info&id=${product.id}"> ${product.name}</a></td>
			<td>${product.price}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>