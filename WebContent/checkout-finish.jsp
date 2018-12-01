<%@page import="com.teamwork.model.dao.Cart"%>
<%@page import="com.teamwork.model.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Check out Finish</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>


	<div class="banner-top">
		<div class="container">
			<h1>Checkout</h1>
			<em></em>
			<h2>
				<a href="index.html">Home</a><label>/</label>Checkout
			</h2>
		</div>
	</div>

	<%
		User u  = (User)session.getAttribute("user");
		if(u==null)
		{
			response.sendRedirect("login.jsp");
		}
	%>
	<%
		Cart cart = (Cart) session.getAttribute("cart");
		if(cart==null){
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
	%>
	
	<!--login-->
	<div class="container">

		<div class="login">
			<form action="CheckOutServlet" method="post">
				<div class="col-md-6 login-do">
					<div class="login-mail">
						<input type="text" placeholder="Nhập địa chỉ nhận hàng"
							required="" name="adress" > <i class="glyphicon glyphicon-envelope"></i>
					</div>
					<div class="login-mail">
						<span>Payment: </span> <select name="payment" >
							<option value="Dỉrect Payment">Thanh Toán Khi
								Nhận Hàng</option>
							<option value="Banking Plus">Banking Plus</option>
						</select>
					</div>

					<label class="hvr-skew-backward"> <input type="submit"
						value="Thanh Toán">
					</label>
				</div>
				<div class="col-md-6 login-right">
					<h3>Đơn Hàng Của Bạn</h3>

					<p>Tổng Hóa Đơn Của Bạn Là: <%=cart.format(cart.total()) %></p>
					<table>
						<tr>
							<label class="checkbox1"><input type="checkbox"
								name="checkboxdongy"><i> </i>Tôi chắc rằng mình muốn
								mua đơn hàng này...</label>
						</tr>
					</table>

				</div>

				<div class="clearfix"></div>
			</form>
		</div>

	</div>

	<%--phan dưới k quan trọng --%>
	<div class="container">
		<div class="brand">
			<div class="col-md-3 brand-grid">
				<img src="images/ic.png" class="img-responsive" alt="">
			</div>
			<div class="col-md-3 brand-grid">
				<img src="images/ic1.png" class="img-responsive" alt="">
			</div>
			<div class="col-md-3 brand-grid">
				<img src="images/ic2.png" class="img-responsive" alt="">
			</div>
			<div class="col-md-3 brand-grid">
				<img src="images/ic3.png" class="img-responsive" alt="">
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>