<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>register</title>

	

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
      $(document).ready(function () {
           var x_timer;
           $("#email").keyup(function (e) {
                clearTimeout(x_timer);
                var user_name = $(this).val();
                x_timer = setTimeout(function () {
                    check_username_ajax(user_name);
                }, 1000);
                });

           function check_username_ajax(username) {
                $("#user-result").html('<img src="img/ajax-loader.gif" />');
                $.post('CheckEmailServlet', {'username': username}, function (data) {
                    $("#user-result").html(data);
                 });
           }
       });
</script>


</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="banner-top">
		<div class="container">
			<h1>Register</h1>
			<em></em>
			<h2>
				<a href="index.html">Home</a><label>/</label>Register
			</h2>
		</div>
	</div>

	<div class="container">
		<div class="login">
		<%if(request.getAttribute("err-register")!=null){ %>
			<b style="color: red; padding-left: 13px;">Địa chỉ email đã tồn tại , không thể thêm</b>
		<%} %>
			<form action="adduser.jsp" method="post">
				<div class="col-md-6 login-do">
					<div class="login-mail">
						<input type="text" placeholder="Name" required="" name="username">
						<i class="glyphicon glyphicon-user"></i>
					</div>
					<div class="login-mail">
						<input type="text" placeholder="Phone Number" required=""
							name="phone"> <i class="glyphicon glyphicon-phone"></i>
					</div>
					<div class="login-mail">
						<input type="email" placeholder="Email" name="email" id="email">
						<i class="glyphicon glyphicon-envelope"></i>
						<span id="user-result"></span>
					</div>
					<div class="login-mail">
						<input type="password" placeholder="Password" required=""
							name="password"> <i class="glyphicon glyphicon-lock"></i>
					</div>
					<a class="news-letter " href="#"> <label class="checkbox1"><input
							type="checkbox" name="checkbox"><i> </i>Forget Password</label>
					</a> <label class="hvr-skew-backward"> <input type="submit"
						value="Submit">
					</label>

				</div>
				<div class="col-md-6 login-right">
					<h3>Completely Free Account</h3>

					<p>Pellentesque neque leo, dictum sit amet accumsan non,
						dignissim ac mauris. Mauris rhoncus, lectus tincidunt tempus
						aliquam, odio libero tincidunt metus, sed euismod elit enim ut mi.
						Nulla porttitor et dolor sed condimentum. Praesent porttitor lorem
						dui, in pulvinar enim rhoncus vitae. Curabitur tincidunt, turpis
						ac lobortis hendrerit, ex elit vestibulum est, at faucibus erat
						ligula non neque.</p>
					<a href="login.jsp" class="hvr-skew-backward">Login</a>

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