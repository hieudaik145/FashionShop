
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.teamwork.model.bean.Product"%>
<%@page import="com.teamwork.model.dao.ProductDao"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>single</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->

<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!--theme-style-->
<link href="css/style4.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<script src="js/jquery.min.js"></script>
<!--- start-rate---->
<script src="js/jstarbox.js"></script>
<link rel="stylesheet" href="css/jstarbox.css" type="text/css"
	media="screen" charset="utf-8" />
<script type="text/javascript">
	jQuery(function() {
		jQuery('.starbox')
				.each(
						function() {
							var starbox = jQuery(this);
							starbox
									.starbox(
											{
												average : starbox
														.attr('data-start-value'),
												changeable : starbox
														.hasClass('unchangeable') ? false
														: starbox
																.hasClass('clickonce') ? 'once'
																: true,
												ghosting : starbox
														.hasClass('ghosting'),
												autoUpdateAverage : starbox
														.hasClass('autoupdate'),
												buttons : starbox
														.hasClass('smooth') ? false
														: starbox
																.attr('data-button-count') || 5,
												stars : starbox
														.attr('data-star-count') || 5
											})
									.bind(
											'starbox-value-changed',
											function(event, value) {
												if (starbox.hasClass('random')) {
													var val = Math.random();
													starbox.next().text(
															' ' + val);
													return val;
												}
											})
						});
	});
</script>
<!---//End-rate---->
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>

	<%
		ProductDao productDao = new ProductDao();
		Product product = new Product();
		
		String productID= "";
		if(request.getParameter("productID")!= null)
		{
			productID = request.getParameter("productID");
			product = productDao.getProduct(Long.parseLong(productID));
			
		}
	%>


	<!--header-->
	<jsp:include page="header.jsp"></jsp:include>
	<!--banner-->
	<div class="banner-top">
		<div class="container">
			<h1>Single</h1>
			<em></em>
			<h2>
				<a href="index.html">Home</a><label>/</label>Single
			</h2>
		</div>
	</div>
	<div class="single">

		<div class="container">
			<div class="col-md-9">
				<div class="col-md-5 grid">
					<div class="flexslider">
						<ul class="slides">
							<li data-thumb="<%=product.getProductImage() %>">
								<div class="thumb-image">
									<img src="<%=product.getProductImage() %>" data-imagezoom="true"
										class="img-responsive">
								</div>
							</li>
							<li data-thumb="<%=product.getProductImage1()%>">
								<div class="thumb-image">
									<img src="<%=product.getProductImage1()%>" data-imagezoom="true"
										class="img-responsive">
								</div>
							</li>
							<li data-thumb="<%=product.getProductImage2()%> "  >
								<div class="thumb-image">
									<img src="<%=product.getProductImage2()%>" data-imagezoom="true"
										class="img-responsive">
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-7 single-top-in">
					<div class="span_2_of_a1 simpleCart_shelfItem">
						<h3><%=product.getProductName() %></h3>
						<p class="in-para">There are many variations of passages of
							Lorem Ipsum.</p>
						<div class="price_single">
							<span class="reducedfrom item_price"><%=product.getProductPrice() %></span> <a href="#">click
								for offer</a>
							<div class="clearfix"></div>
						</div>
						<h4 class="quick">Quick Overview:</h4>
						<p class="quick_desc"><%=product.getProductOverview() %></p>
						<div class="wish-list">
							<ul>
								<li class="wish"><a href="#"><span
										class="glyphicon glyphicon-check" aria-hidden="true"></span>Add
										to Wishlist</a></li>
								<li class="compare"><a href="#"><span
										class="glyphicon glyphicon-resize-horizontal"
										aria-hidden="true"></span>Add to Compare</a></li>
							</ul>
						</div>
						<div class="quantity">
							<div class="quantity-select">
								<div class="entry value-minus">&nbsp;</div>
								<div class="entry value">
									<span>1</span>
								</div>
								<div class="entry value-plus active">&nbsp;</div>
							</div>
						</div>
						<!--quantity-->
						<script>
							$('.value-plus').on(
									'click',
									function() {
										var divUpd = $(this).parent().find(
												'.value'), newVal = parseInt(
												divUpd.text(), 10) + 1;
										divUpd.text(newVal);
									});

							$('.value-minus').on(
									'click',
									function() {
										var divUpd = $(this).parent().find(
												'.value'), newVal = parseInt(
												divUpd.text(), 10) - 1;
										if (newVal >= 1)
											divUpd.text(newVal);
									});
						</script>
						<!--quantity-->

						<a href="CartServlet?command=plus&productID=<%=product.getProductID() %>" class="add-to item_add hvr-skew-backward">Add to
							cart</a>
						<div class="clearfix"></div>
					</div>

				</div>
				<div class="clearfix"></div>
				<!---->
				<div class="tab-head">
					<nav class="nav-sidebar">
						<ul class="nav tabs">
							<li class="active"><a href="#tab1" data-toggle="tab">Product
									Description</a></li>
							<li class=""><a href="#tab2" data-toggle="tab">Additional
									Information</a></li>
							<li class=""><a href="#tab3" data-toggle="tab">Reviews</a></li>
						</ul>
					</nav>
					<div class="tab-content one">
						<div class="tab-pane active text-style" id="tab1">
							<div class="facts">
								<p><%= product.getProductDescription() %></p>
								<ul>
									<li><span class="glyphicon glyphicon-ok"
										aria-hidden="true"></span>Research</li>
									<li><span class="glyphicon glyphicon-ok"
										aria-hidden="true"></span>Design and Development</li>
									<li><span class="glyphicon glyphicon-ok"
										aria-hidden="true"></span>Porting and Optimization</li>
									<li><span class="glyphicon glyphicon-ok"
										aria-hidden="true"></span>System integration</li>
									<li><span class="glyphicon glyphicon-ok"
										aria-hidden="true"></span>Verification, Validation and Testing</li>
									<li><span class="glyphicon glyphicon-ok"
										aria-hidden="true"></span>Maintenance and Support</li>
								</ul>
							</div>

						</div>
						<div class="tab-pane text-style" id="tab2">

							<div class="facts">
								<p><%= product.getProductAdditonal() %></p>
								<ul>
									<li><span class="glyphicon glyphicon-ok"
										aria-hidden="true"></span>Multimedia Systems</li>
									<li><span class="glyphicon glyphicon-ok"
										aria-hidden="true"></span>Digital media adapters</li>
									<li><span class="glyphicon glyphicon-ok"
										aria-hidden="true"></span>Set top boxes for HDTV and IPTV
										Player</li>
								</ul>
							</div>

						</div>
						<div class="tab-pane text-style" id="tab3">

							<div class="facts">
								<p><%= product.getProductReview() %></p>
								<ul>
									<li><span class="glyphicon glyphicon-ok"
										aria-hidden="true"></span>Research</li>
									<li><span class="glyphicon glyphicon-ok"
										aria-hidden="true"></span>Design and Development</li>
									<li><span class="glyphicon glyphicon-ok"
										aria-hidden="true"></span>Porting and Optimization</li>
									<li><span class="glyphicon glyphicon-ok"
										aria-hidden="true"></span>System integration</li>
									<li><span class="glyphicon glyphicon-ok"
										aria-hidden="true"></span>Verification, Validation and Testing</li>
									<li><span class="glyphicon glyphicon-ok"
										aria-hidden="true"></span>Maintenance and Support</li>
								</ul>
							</div>

						</div>

					</div>
					<div class="clearfix"></div>
				</div>
				<!---->
			</div>
			<!----->

			<div class="col-md-3 product-bottom product-at">
				<!--categories-->
				<div class=" rsidebar span_1_of_left">
					<h4 class="cate">Categories</h4>
					<ul class="menu-drop">
						<li class="item1"><a href="#">Men </a>
							<ul class="cute">
								<li class="subitem1"><a href="product.html">Cute
										Kittens </a></li>
								<li class="subitem2"><a href="product.html">Strange
										Stuff </a></li>
								<li class="subitem3"><a href="product.html">Automatic
										Fails </a></li>
							</ul></li>
						<li class="item2"><a href="#">Women </a>
							<ul class="cute">
								<li class="subitem1"><a href="product.html">Cute
										Kittens </a></li>
								<li class="subitem2"><a href="product.html">Strange
										Stuff </a></li>
								<li class="subitem3"><a href="product.html">Automatic
										Fails </a></li>
							</ul></li>
						<li class="item3"><a href="#">Kids</a>
							<ul class="cute">
								<li class="subitem1"><a href="product.html">Cute
										Kittens </a></li>
								<li class="subitem2"><a href="product.html">Strange
										Stuff </a></li>
								<li class="subitem3"><a href="product.html">Automatic
										Fails</a></li>
							</ul></li>
						<li class="item4"><a href="#">Accessories</a>
							<ul class="cute">
								<li class="subitem1"><a href="product.html">Cute
										Kittens </a></li>
								<li class="subitem2"><a href="product.html">Strange
										Stuff </a></li>
								<li class="subitem3"><a href="product.html">Automatic
										Fails</a></li>
							</ul></li>

						<li class="item4"><a href="#">Shoes</a>
							<ul class="cute">
								<li class="subitem1"><a href="product.html">Cute
										Kittens </a></li>
								<li class="subitem2"><a href="product.html">Strange
										Stuff </a></li>
								<li class="subitem3"><a href="product.html">Automatic
										Fails </a></li>
							</ul></li>
					</ul>
				</div>
				<!--initiate accordion-->
				<script type="text/javascript">
					$(function() {
						var menu_ul = $('.menu-drop > li > ul'), menu_a = $('.menu-drop > li > a');
						menu_ul.hide();
						menu_a.click(function(e) {
							e.preventDefault();
							if (!$(this).hasClass('active')) {
								menu_a.removeClass('active');
								menu_ul.filter(':visible').slideUp('normal');
								$(this).addClass('active').next().stop(true,
										true).slideDown('normal');
							} else {
								$(this).removeClass('active');
								$(this).next().stop(true, true).slideUp(
										'normal');
							}
						});

					});
				</script>
				<!--//menu-->
				<section class="sky-form">
					<h4 class="cate">Discounts</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox" checked=""><i></i>Upto - 10% (20)</label>
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>40% - 50% (5)</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>30%
								- 20% (7)</label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>10% - 5% (2)</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other(50)</label>
						</div>
					</div>
				</section>


				<!---->
				<section class="sky-form">
					<h4 class="cate">Type</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox" checked=""><i></i>Sofa Cum Beds (30)</label>
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Bags (30)</label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>Caps & Hats (30)</label>
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Jackets & Coats (30)</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>Jeans
								(30)</label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Shirts (30)</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>Sunglasses
								(30)</label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Swimwear (30)</label>
						</div>
					</div>
				</section>
				<section class="sky-form">
					<h4 class="cate">Brand</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox" checked=""><i></i>Roadstar</label>
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Levis</label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>Persol</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>Nike</label>
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Edwin</label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>New Balance</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>Paul
								Smith</label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Ray-Ban</label>
						</div>
					</div>
				</section>
			</div>
			<div class="clearfix"></div>
		</div>

		<!--brand-->
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
		<!--//brand-->
	</div>

	<!--//content-->
	<!--//footer-->
	<div class="footer">
		<div class="footer-middle">
			<div class="container">
				<div class="col-md-3 footer-middle-in">
					<a href="index.html"><img src="images/log.png" alt=""></a>
					<p>Suspendisse sed accumsan risus. Curabitur rhoncus, elit vel
						tincidunt elementum, nunc urna tristique nisi, in interdum libero
						magna tristique ante. adipiscing varius. Vestibulum dolor lorem.</p>
				</div>

				<div class="col-md-3 footer-middle-in">
					<h6>Information</h6>
					<ul class=" in">
						<li><a href="404.html">About</a></li>
						<li><a href="contact.html">Contact Us</a></li>
						<li><a href="#">Returns</a></li>
						<li><a href="contact.html">Site Map</a></li>
					</ul>
					<ul class="in in1">
						<li><a href="#">Order History</a></li>
						<li><a href="wishlist.html">Wish List</a></li>
						<li><a href="login.html">Login</a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-3 footer-middle-in">
					<h6>Tags</h6>
					<ul class="tag-in">
						<li><a href="#">Lorem</a></li>
						<li><a href="#">Sed</a></li>
						<li><a href="#">Ipsum</a></li>
						<li><a href="#">Contrary</a></li>
						<li><a href="#">Chunk</a></li>
						<li><a href="#">Amet</a></li>
						<li><a href="#">Omnis</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-middle-in">
					<h6>Newsletter</h6>
					<span>Sign up for News Letter</span>
					<form>
						<input type="text" value="Enter your E-mail"
							onfocus="this.value='';"
							onblur="if (this.value == '') {this.value ='Enter your E-mail';}">
						<input type="submit" value="Subscribe">
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container">
				<ul class="footer-bottom-top">
					<li><a href="#"><img src="images/f1.png"
							class="img-responsive" alt=""></a></li>
					<li><a href="#"><img src="images/f2.png"
							class="img-responsive" alt=""></a></li>
					<li><a href="#"><img src="images/f3.png"
							class="img-responsive" alt=""></a></li>
				</ul>
				<p class="footer-class">
					&copy; 2016 Shopin. All Rights Reserved | Design by <a
						href="http://w3layouts.com/" target="_blank">W3layouts</a>
				</p>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//footer-->
	<script src="js/imagezoom.js"></script>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script defer src="js/jquery.flexslider.js"></script>
	<link rel="stylesheet" href="css/flexslider.css" type="text/css"
		media="screen" />

	<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>

	<script src="js/simpleCart.min.js"> </script>
	<!-- slide -->
	<script src="js/bootstrap.min.js"></script>


</body>
</html>