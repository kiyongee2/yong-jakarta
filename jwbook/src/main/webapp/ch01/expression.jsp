<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		int count = 0;
		int num1=10, num2=20;
		int sum=0;
	%>
	
	<%
		sum = num1 + num2;
	    //out.println(sum);
	    
	    for(int i=1; i<=10; i++){
	    	if(i % 2 == 0){
	    		out.println(i);
	    	}
	    }
	%>
	
	<h3>Page Count is <%= ++count %></h3>
	<h3>합계 <%=sum %></h3>
</body>
</html>