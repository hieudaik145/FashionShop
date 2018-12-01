<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>contact</title>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="banner-top">
		<div class="container">
			<h1>Contact</h1>
			<em></em>
			<h2>
				<a href="index.html">Home</a><label>/</label>Contact
			</h2>
		</div>
	</div>

	<div class="contact">

		<div class="contact-form">
			<div class="container">
				<div class="col-md-6 contact-left">
					<h3>At vero eos et accusamus et iusto odio dignissimos ducimus
						qui</h3>
					<p>Blanditiis praesentium voluptatum deleniti atque corrupti
						quos dolores et quas. At vero eos et accusamus et iusto odio
						dignissimos ducimus qui blanditiis praesentium voluptatum deleniti
						atque corrupti quos dolores et quas.At vero eos et accusamus et
						iusto odio dignissimos ducimus qui blanditiis praesentium
						voluptatum deleniti atque corrupti quos dolores et quas.</p>


					<div class="address">
						<div class=" address-grid">
							<i class="glyphicon glyphicon-map-marker"></i>
							<div class="address1">
								<h3>Address</h3>
								<p>Lorem ipsum dolor, TL 19034-88974</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class=" address-grid ">
							<i class="glyphicon glyphicon-phone"></i>
							<div class="address1">
								<h3>
									Our Phone:
									<h3>
										<p>+123456789</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class=" address-grid ">
							<i class="glyphicon glyphicon-envelope"></i>
							<div class="address1">
								<h3>Email:</h3>
								<p>
									<a href="mailto:info@example.com"> Lorem@example.com</a>
								</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class=" address-grid ">
							<i class="glyphicon glyphicon-bell"></i>
							<div class="address1">
								<h3>Open Hours:</h3>
								<p>Monday-Friday, 7AM-5PM</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-6 contact-top">
					<h3>Want to work with me?</h3>
					<form>
						<div>
							<span>Your Name </span> <input type="text" value="">
						</div>
						<div>
							<span>Your Email </span> <input type="text" value="">
						</div>
						<div>
							<span>Subject</span> <input type="text" value="">
						</div>
						<div>
							<span>Your Message</span>
							<textarea> </textarea>
						</div>
						<label class="hvr-skew-backward"> <input type="submit"
							value="Send">
						</label>
					</form>
				</div>
				<div class="clearfix"></div>
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
			<!--//brand-->
			</div>
			
		</div>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>