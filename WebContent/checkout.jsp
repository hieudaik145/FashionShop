<%@page import="com.teamwork.model.dao.ProductDao"%>
<%@page import="com.teamwork.model.dao.Cart"%>
<%@page import="com.teamwork.model.bean.Item"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script>
	$(document).ready(function(c) {
		$('.close1').on('click', function(c) {
			$('.cart-header').fadeOut('slow', function(c) {
				$('.cart-header').remove();
			});
		});
	});
</script>
<script>
	$(document).ready(function(c) {
		$('.close2').on('click', function(c) {
			$('.cart-header1').fadeOut('slow', function(c) {
				$('.cart-header1').remove();
			});
		});
	});
</script>
<script>
	$(document).ready(function(c) {
		$('.close3').on('click', function(c) {
			$('.cart-header2').fadeOut('slow', function(c) {
				$('.cart-header2').remove();
			});
		});
	});
</script>
<title>checkout</title>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="banner-top">
		<div class="container">
			<h1>Checkout</h1>
			<em></em>
			<h2>
				<a href="index.jsp">Home</a><label>/</label>Checkout
			</h2>
		</div>
	</div>

	<%
		Cart cart = (Cart) session.getAttribute("cart");
		if (cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
	%>

	<div class="check-out">
		<div class="container">

			<div class="bs-example4" data-example-id="simple-responsive-table">
				<div class="table-responsive">
					<table class="table-heading simpleCart_shelfItem">
						<tr>
							<th class="table-grid">Item</th>

							<th>Prices</th>
							<th>Quantity</th>
							<th>Subtotal</th>
						</tr>
						<%
							for (Map.Entry<Long, Item> list : cart.getCartItem().entrySet()) {
						%>
						<tr class="cart-header">

							<td class="ring-in"><a
								href="single.jsp?productID=<%=list.getValue().getProduct().getProductID()%>"
								class="at-in"><img
									src="<%=list.getValue().getProduct().getProductImage()%>"
									height="140" width="120" class="img-responsive" alt=""></a>
								<div class="sed">
									<h5>
										<a
											href="single.jsp?productID=<%=list.getValue().getProduct().getProductID()%>"><%=list.getValue().getProduct().getProductName()%></a>
									</h5>
									<p><%=list.getValue().getProduct().getProductOverview()%></p>

								</div>
								<div class="clearfix"></div>
								<div>
									<a
										href="CartServlet?command=remove&productID=<%=list.getValue().getProduct().getProductID()%>"
										class="close1"></a>
								</div></td>
							<td><%=cart.format(list.getValue().getProduct().getProductPrice())%></td>
							<td><%=list.getValue().getQuantity()%></td>
							<td class="item_price"><%=cart.format(list.getValue().getProduct().getProductPrice() * list.getValue().getQuantity())%></td>
							<td class="add-check"><a class="item_add hvr-skew-backward"
								href="#">Add To Cart</a></td>
						</tr>
						<%
							}
						%>


					</table>
				</div>
			</div>
			<div class="produced">
			<%if(cart.total()!=0) { %>
				<b>Tổng tiền: <%=cart.format(cart.total()) %></b>
				<a href="checkout-finish.jsp" class="hvr-skew-backward">Thanh Toán</a>
			<%} else{ %>
				<a href="index.jsp" class="hvr-skew-backward">Not Product </a>
				<%} %>
			</div>
		</div>
	</div>


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