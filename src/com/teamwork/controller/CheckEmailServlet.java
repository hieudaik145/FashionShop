package com.teamwork.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.teamwork.model.dao.UserDao;

/**
 * Servlet implementation class CheckEmailServlet
 */
@WebServlet("/CheckEmailServlet")
public class CheckEmailServlet extends HttpServlet {
    
	UserDao usersDAO = new UserDao();
	
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("username");
		boolean result = usersDAO.checkEmail(username);
		if(result)
		{
			response.getWriter().write("<img src=\"img/not-available.png\" />");
		}
		else
		{
			response.getWriter().write("<img src=\"img/avaliable.png\" />");
		}
	}

}
