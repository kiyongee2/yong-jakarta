<%@page import="addressbook.AddrBook"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소 정보</title>
<link rel="stylesheet" href="../resources/css/style.css">
</head>
<body>
	<jsp:useBean id="abDAO" class="addressbook.AddrBookDAO" scope="application" />
	<% 
		//num으로 찾은 객체를 생성
		int num = Integer.parseInt(request.getParameter("num"));
		AddrBook addrBook = abDAO.getAddrBook(num);
	%>
	<div id="container">
		<h2>주소 정보</h2>
		<hr>
	    <table id="tbl_view">
	    	<tr>
	    		<td>이름</td>
	    		<td><%=addrBook.getUsername() %> </td>
	    	</tr>
	    	<tr>
	    		<td>전화번호</td>
	    		<td><%=addrBook.getTel() %> </td>
	    	</tr>
	    	<tr>
	    		<td>이메일</td>
	    		<td><%=addrBook.getEmail() %> </td>
	    	</tr>
	    	<tr>
				<td>성별</td>
				<td>
				<% if(addrBook.getGender().equals("남")){ %>
					<input type="radio" name="gender" value="남" checked>남
					<input type="radio" name="gender" value="여">여
				<% }else{ %>
					<input type="radio" name="gender" value="남">남
					<input type="radio" name="gender" value="여" checked>여
				<% } %>
				</td>
			</tr>
	    	<tr>
	    		<td>등록일</td><td><%=addrBook.getRegDate() %> </td>
	    	</tr>
	    	<tr>
				<td colspan="2">
				<% if(session.getAttribute("sessionId").equals(addrBook.getEmail())){ %>
					<a href="./addrUpdate.jsp?num=<%=addrBook.getNum() %>">
						<button type="button">수정</button>
					</a>
					<a href="./addrDelete.jsp?num=<%=addrBook.getNum() %>" 
					   onclick="return confirm('정말로 삭제하시겠습니까?')">
						<button type="button">삭제</button>
					</a>
				<% } %>
					<a href="./addrList.jsp"><button type="button">목록</button></a>
				</td>
			</tr>
	    </table>
	</div>
</html>