<%@page import="com.teamwork.model.dao.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>Insert title here</title>
</head>
<body>

	<%@page import="com.teamwork.model.dao.RegisterDao" %>
	<jsp:useBean id="u" class="com.teamwork.model.bean.User"></jsp:useBean>
	<jsp:setProperty property="*" name="u"/>
	
	<%
		int i = RegisterDao.register(u);
		if(i>0)
		{	
			LoginDao.getDataKH(u);
			session.setAttribute("user", u);
			response.sendRedirect("index.jsp");
		}
		else
		{
			request.setAttribute("err-register", "");
			RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
			rd.forward(request, response);
		}
	%>

</body>
</html>