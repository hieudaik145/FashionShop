<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Insert title here</title>
</head>
<body>
	<%@page import="com.teamwork.model.dao.LoginDao" %>
	<jsp:useBean id="u" class="com.teamwork.model.bean.User"></jsp:useBean>
	<jsp:setProperty property="email" name="u"/>
	<jsp:setProperty property="password" name="u"/>
	
	<%
		boolean result = LoginDao.CheckLogin(u);
		if(result)
		{
			LoginDao.getDataKH(u);
			session.setAttribute("user", u);
			response.sendRedirect("index.jsp");
			
		}
		else
		{
			
			request.setAttribute("err", "Tên đăng nhập or mật khẩu không đúng");
			RequestDispatcher rd =  request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);

		}
	%>
	
	
</body>
</html>