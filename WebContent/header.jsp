
<%@page import="com.teamwork.model.dao.Cart"%>
<%@page
	import="com.teamwork.model.dao.CategoryDao, com.teamwork.model.dao.CategoryMenDao"%>
<%@page import="com.teamwork.model.bean.User"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>header</title>
</head>
<body>
	
	<%@page
		import="com.teamwork.model.bean.Category,com.teamwork.model.bean.CategoryMen"%>
	<%
		CategoryDao categoryDao = new CategoryDao();
		CategoryMenDao categoryMenDao = new CategoryMenDao();
	%>
	<%-- --%>
	<%
		User user = null;
		if (session.getAttribute("user") != null) {
			user = (User) session.getAttribute("user");
		}
	%>

	<%--chuc nang gio hang --%>
	<%
		Cart cart = (Cart) session.getAttribute("cart");
		if (cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
	%>

	<div class="header">
		<div class="container">
			<div class="head">
				<div class=" logo">
					<a href="index.jsp"><img src="images/logo.png" alt=""></a>
				</div>
			</div>
		</div>
		<div class="header-top">
			<div class="container">
				<div class="col-sm-5 col-md-offset-2  header-login">
					<ul>
						<%
							if (user != null) {
						%>
						<li><a href="QuanLyTaiKhoan.jsp"><%=user.getUsername()%></a></li>
						<li><a href="logout.jsp">Logout</a></li>
						<li><a href="checkout.jsp">Checkout</a></li>
						<%
							} else {
						%>
						<li><a href="login.jsp">Login</a></li>
						<li><a href="register.jsp">Register</a></li>
						<li><a href="checkout.jsp">Checkout</a></li>
						<%
							}
						%>
					</ul>
				</div>

				<div class="col-sm-5 header-social">
					<ul>
						<li><a href="#"><i></i></a></li>
						<li><a href="#"><i class="ic1"></i></a></li>
						<li><a href="#"><i class="ic2"></i></a></li>
						<li><a href="#"><i class="ic3"></i></a></li>
						<li><a href="#"><i class="ic4"></i></a></li>
					</ul>

				</div>
				<div class="clearfix"></div>
			</div>
		</div>

		<div class="container">

			<div class="head-top">

				<div class="col-sm-8 col-md-offset-2 h_menu4">
					<nav class="navbar nav_bottom" role="navigation">

						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header nav_2">
							<button type="button"
								class="navbar-toggle collapsed navbar-toggle1"
								data-toggle="collapse" data-target="#bs-megadropdown-tabs">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>

						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
							<ul class="nav navbar-nav nav_1">
								<li><a class="color" href="index.jsp">Home</a></li>

								<li class="dropdown mega-dropdown active"><a class="color1"
									href="#" class="dropdown-toggle" data-toggle="dropdown">Women<span
										class="caret"></span></a>
									<div class="dropdown-menu ">
										<div class="menu-top">
											<div>
												<div class="h_nav">
													<h4 style="padding-bottom: 30px; text-align: center;">Thời
														Trang Nữ</h4>
													<%--lay danh sach product theo ten danh muc --%>
													<%
														for (Category c : categoryDao.getListCategory()) {
													%>
													<ul
														style="display: inline-table; text-decoration: none; list-style: none; border: none; list-style-type: none;">
														<li><a
															href="product.jsp?category=<%=c.getCategory_ID()%>"><%=c.getCategory_Name()%></a></li>
													</ul>
													<%
														}
													%>


												</div>
											</div>


										</div>
									</div></li>
								<li class="dropdown mega-dropdown active"><a class="color2"
									href="#" class="dropdown-toggle" data-toggle="dropdown">Men<span
										class="caret"></span></a>
									<div class="dropdown-menu mega-dropdown-menu">
										<div class="menu-top">
											<div>
												<div class="h_nav">
													<h4 style="padding-bottom: 30px; text-align: center;">Thời
														Trang Nam</h4>
													<%
														for (CategoryMen c : categoryMenDao.getListCategoryMan()) {
													%>
													<ul
														style="display: inline-table; text-decoration: none; list-style: none; border: none; list-style-type: none; padding-bottom: 20px;">
														<li><a
															href="product.jsp?category=<%=c.getCategoryMen_ID()%>"><%=c.getCategoryMen_Name()%></a></li>
													</ul>
													<%
														}
													%>
												</div>
											</div>

										</div>
									</div></li>
								<li><a class="color3" href="product.html">Sale</a></li>
								<li><a class="color4" href="404.html">About</a></li>
								<li><a class="color5" href="typo.html">Short Codes</a></li>
								<li><a class="color6" href="contact.html">Contact</a></li>
							</ul>
						</div>
						<!-- /.navbar-collapse -->

					</nav>
				</div>
				<div class="col-sm-2 search-right">
					<ul class="heart">
						<li><a href="wishlist.html"> <span
								class="glyphicon glyphicon-heart" aria-hidden="true"></span>
						</a></li>
						<li><a class="play-icon popup-with-zoom-anim"
							href="#small-dialog"><i class="glyphicon glyphicon-search">
							</i></a></li>
					</ul>
					<div class="cart box_1">
						<a href="checkout.jsp">
							<h3>
								<div class="total">
									<span><%=cart.format(cart.total())%></span>
								</div>
								<img src="images/cart.png" alt="" />
							</h3>
						</a>
						<p>
							<a href="CartServlet?command=removeall&productID=0">Empty Cart</a>
						</p>

					</div>
					<div class="clearfix"></div>

					<!----->

					<!---pop-up-box---->
					<link href="css/popuo-box.css" rel="stylesheet" type="text/css"
						media="all" />
					<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
					<!---//pop-up-box---->
					<div id="small-dialog" class="mfp-hide">
						<div class="search-top">
							<div class="login-search">
								<input type="submit" value=""> <input type="text"
									value="Search.." onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = 'Search..';}">
							</div>
							<p>Shopin</p>
						</div>
					</div>
					<script>
						$(document).ready(function() {
							$('.popup-with-zoom-anim').magnificPopup({
								type : 'inline',
								fixedContentPos : false,
								fixedBgPos : true,
								overflowY : 'auto',
								closeBtnInside : true,
								preloader : false,
								midClick : true,
								removalDelay : 300,
								mainClass : 'my-mfp-zoom-in'
							});

						});
					</script>
					
					<!----->
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

</body>
</html>