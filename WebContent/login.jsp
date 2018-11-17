<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="banner-top">
		<div class="container">
			<h1>Login</h1>
			<em></em>
			<h2>
				<a href="index.html">Home</a><label>/</label>Login
			</h2>
		</div>
	</div>

	<div class="container">
		<div class="login">
	<% if(request.getAttribute("err") != null){ %>
			<b style="color: red; padding-left: 13px;"><%=request.getAttribute("err") %></b>
	<%} %>
			<form action="checklogin.jsp" method="post">
				<div class="col-md-6 login-do">
					<div class="login-mail">
						<input type="text" placeholder="Email" required="" name="email"> <i
							class="glyphicon glyphicon-envelope"></i>
					</div>
					<div class="login-mail">
						<input type="password" placeholder="Password" required="" name="password">
						<i class="glyphicon glyphicon-lock"></i>
					</div>
					<a class="news-letter " href="#"> <label class="checkbox1"><input
							type="checkbox" name="checkbox"><i> </i>Forget Password</label>
					</a> <label class="hvr-skew-backward"> <input type="submit"
						value="login">
					</label>
				</div>
				<div class="col-md-6 login-right">
					<h3>Đăng ký tài khoản miễn phí</h3>

					<p>Pellentesque neque leo, dictum sit amet accumsan non,
						dignissim ac mauris. Mauris rhoncus, lectus tincidunt tempus
						aliquam, odio libero tincidunt metus, sed euismod elit enim ut mi.
						Nulla porttitor et dolor sed condimentum. Praesent porttitor lorem
						dui, in pulvinar enim rhoncus vitae. Curabitur tincidunt, turpis
						ac lobortis hendrerit, ex elit vestibulum est, at faucibus erat
						ligula non neque.</p>
					<a href="register.jsp" class=" hvr-skew-backward">Register</a>

				</div>

				<div class="clearfix"></div>
			</form>
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