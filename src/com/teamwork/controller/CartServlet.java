package com.teamwork.controller;

import java.awt.SecondaryLoop;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.teamwork.model.bean.Item;
import com.teamwork.model.bean.Product;
import com.teamwork.model.dao.Cart;
import com.teamwork.model.dao.ProductDao;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	
     private final ProductDao productDao = new ProductDao();
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response1) throws ServletException, IOException {
		HttpSession session =  request.getSession();
		String command = request.getParameter("command");
		
		String productID = request.getParameter("productID");
	
		Cart cart = (Cart) session.getAttribute("cart");
		try {
			
			Long idProduct = Long.parseLong(productID);
			Product product = productDao.getProduct(idProduct);
			switch(command)
			{
			case "plus":
				if(cart.getCartItem().containsKey(idProduct))
				{
					cart.insertToCart(idProduct, new Item(product,cart.getCartItem().get(idProduct).getQuantity()));
				}
				else
				{
					cart.insertToCart(idProduct, new Item(product, 1));
				}
				response1.sendRedirect("index.jsp");
				break;
			case "remove":
				cart.removeToCart(idProduct);
				
				response1.sendRedirect("checkout.jsp");
				break;
			case "removeall":
				cart.removeALLToCart();
				response1.sendRedirect("index.jsp");
				break;
		
			
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			response1.sendRedirect("index.jsp");
			
		}
		session.setAttribute("cart", cart);
		
	}
	

}
