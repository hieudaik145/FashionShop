<%@page import="com.teamwork.model.bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		User user = null;
		if(session.getAttribute("user")!= null)
		{
			user = (User)session.getAttribute("user");
		}
	
		
	%>
	<h1><%= user.getEmail()%></h1>
</body>
</html>