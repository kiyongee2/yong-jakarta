<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//String hostValue = request.getHeader("host");
	    //String alValue = request.getHeader("accept-language");
	    
	    Enumeration<String> en = request.getHeaderNames();
	    while(en.hasMoreElements()){
	    	String headerName = en.nextElement();
	    	String headerValue = request.getHeader(headerName);
	    	out.println(headerName + ":" + headerValue + "<br>");
	    }
	
		//out.println(hostValue + "<br>");
		//out.println(alValue + "<br>");
	%>
</body>
</html>