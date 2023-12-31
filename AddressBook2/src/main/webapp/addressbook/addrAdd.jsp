<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<title>주소 추가</title>
<link rel="stylesheet" href="../resources/css/style.css">

<jsp:useBean id="addrBook" class="addressbook.AddrBook" />
<jsp:setProperty property="username" name="addrBook"/>
<jsp:setProperty property="tel" name="addrBook"/>
<jsp:setProperty property="email" name="addrBook"/>
<jsp:setProperty property="gender" name="addrBook"/>
<jsp:useBean id="abDAO" class="addressbook.AddrBookDAO" scope="application" />
<% 
	abDAO.addAddrBook(addrBook); //주소 추가
	//주소 등록후 자동 로그인
	session.setAttribute("sessionId", addrBook.getEmail());
%>

<div id="container">
	<h2>등록 내용</h2>
	<hr>
	<p>이름: <%=addrBook.getUsername() %> </p>
	<p>전화번호: <%=addrBook.getTel() %> </p>
	<p>이메일: <%=addrBook.getEmail() %> </p>
	<p>성별: <%=addrBook.getGender() %> </p>
	<hr>
	<p><a href="addrList.jsp">목록 보기</a></p>
</div>