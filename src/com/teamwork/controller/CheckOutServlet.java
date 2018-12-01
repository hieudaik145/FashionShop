package com.teamwork.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.teamwork.model.bean.Bill;
import com.teamwork.model.bean.BillDetail;
import com.teamwork.model.bean.Item;
import com.teamwork.model.bean.User;
import com.teamwork.model.dao.BillDao;
import com.teamwork.model.dao.BillDetailDao;
import com.teamwork.model.dao.Cart;

/**
 * Servlet implementation class CheckOutServlet
 */
@WebServlet("/CheckOutServlet")
public class CheckOutServlet extends HttpServlet {
    
	private final BillDao billDao = new BillDao();
	private final BillDetailDao billDetailDao = new BillDetailDao();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			String payment = request.getParameter("payment");
			String adress = request.getParameter("adress");
			HttpSession session = request.getSession();
			Cart cart = (Cart) session.getAttribute("cart");
			User user = (User) session.getAttribute("user");
			try
			{
				long ID = new Date().getTime();
				Bill bill = new Bill();
				bill.setBillID(ID);
				bill.setAdress(adress);
				bill.setPayment(payment);
				bill.setUserID(user.getUserID());
				bill.setDate(new Timestamp(new Date().getTime()));
				bill.setTotal(cart.total());
				billDao.insertBill(bill);
				for(Map.Entry<Long, Item> list: cart.getCartItem().entrySet())
				{
					billDetailDao.insertBillDetail(new BillDetail(0, ID, list.getValue().getProduct().getProductID(),
							list.getValue().getProduct().getProductPrice(), list.getValue().getQuantity()));
				}
				cart = new Cart();
				session.setAttribute("cart", cart);
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			response.sendRedirect("index.jsp");
	}

}
