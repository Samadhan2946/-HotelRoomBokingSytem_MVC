<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from oscarthemes.com/html/hotel/onepage-demo/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 27 May 2025 08:26:58 GMT -->
<head>

</head>
<body>

	<div id="home" class="chr-wrapper">
		<jsp:include page="../admin/header.jsp"></jsp:include>
		

	
		

		
		
		<!--Price Section Start-->
		<section id="section-8" class="gray-bg price-table-section">
			<div class="container">
				<!--Heading 1 Start-->
				<div class="headind-1 text-center">
					<h3 class="title">Our Pricing</h3>
				</div>
				<!--Heading 1 End-->
				<div class="row">
					<!--Price Table Start-->
					<div class="col-md-4 col-sm-6">
						<div class="price-table">
							<h4 class="title">
								$ 299 <sub>/ month</sub>
							</h4>
							<figure>
								<img src="assets/extra-images/price-img1.jpg" alt="OscarThemes">
							</figure>
							<div class="text">
								<p>Lorem Ipsum Dolor Sit Amet, is Consectetur Adipisicing A
									Elitie Orem Ipsum Dolor Sit Amet, is Consectetur...</p>
								<ul class="chr-price-contant">
									<li>Unlimited Access</li>
									<li>Free 2 Days Training</li>
									<li>5 Weeks Gym Pass</li>
									<li>1 Fitness Course</li>
									<li>Unlimited Gym Enterance</li>
								</ul>
								<a class="chr-btn fancy-btn" href="#">Buy Now</a>
							</div>
						</div>
					</div>
					<!--Price Table End-->
					<!--Price Table Start-->
					<div class="col-md-4 col-sm-6">
						<div class="price-table">
							<h4 class="title">
								$ 399 <sub>/ 6month</sub>
							</h4>
							<figure>
								<img src="assets/extra-images/price-img2.jpg" alt="OscarThemes">
							</figure>
							<div class="text">
								<p>Lorem Ipsum Dolor Sit Amet, is Consectetur Adipisicing A
									Elitie Orem Ipsum Dolor Sit Amet, is Consectetur...</p>
								<ul class="chr-price-contant">
									<li>Unlimited Access</li>
									<li>Free 2 Days Training</li>
									<li>5 Weeks Gym Pass</li>
									<li>1 Fitness Course</li>
									<li>Unlimited Gym Enterance</li>
								</ul>
								<a class="chr-btn fancy-btn" href="#">Buy Now</a>
							</div>
						</div>
					</div>
					<!--Price Table End-->
					<!--Price Table Start-->
					<div class="col-md-4 hidden-sm">
						<div class="price-table">
							<h4 class="title">
								$ 499 <sub>/ year</sub>
							</h4>
							<figure>
								<img src="assets/extra-images/price-img3.jpg" alt="OscarThemes">
							</figure>
							<div class="text">
								<p>Lorem Ipsum Dolor Sit Amet, is Consectetur Adipisicing A
									Elitie Orem Ipsum Dolor Sit Amet, is Consectetur...</p>
								<ul class="chr-price-contant">
									<li>Unlimited Access</li>
									<li>Free 2 Days Training</li>
									<li>5 Weeks Gym Pass</li>
									<li>1 Fitness Course</li>
									<li>Unlimited Gym Enterance</li>
								</ul>
								<a class="chr-btn fancy-btn" href="#">Buy Now</a>
							</div>
						</div>
					</div>
					<!--Price Table End-->
				</div>
			</div>
		</section>
		<!--Price Section End-->
		<!--Contact Section Start-->
		<section id="section-9">
			<div class="container">
				<div class="contact-form">
					<!--Heading 1 Start-->
					<div class="headind-1 text-center">
						<h3 class="title">Get In Touch</h3>
					</div>
					<!--Heading 1 End-->
					<form id="contact-form"
						action="https://oscarthemes.com/html/hotel/onepage-demo/php/contact-form.php"
						method="POST">
						<!--Divider Start-->
						<div class="input-divider row">
							<div class="col-md-4 col-sm-4">
								<!--Input Field Start-->
								<div class="input-field">
									<input type="text" value=""
										data-msg-required="Please enter your name" maxlength="100"
										class="form-control " name="name" id="name"
										placeholder="Your Name" required>
								</div>
								<!--Input Field End-->
							</div>
							<div class="col-md-4 col-sm-4">
								<!--Input Field Start-->
								<div class="input-field">
									<input type="email" value=""
										data-msg-required="Please enter your email address"
										data-msg-email="Please enter a valid email address"
										maxlength="100" class="form-control " name="email" id="email"
										placeholder="Your Email" required>
								</div>
								<!--Input Field End-->
							</div>
							<div class="col-md-4 col-sm-4">
								<!--Input Field Start-->
								<div class="input-field">
									<input type="text" value=""
										data-msg-required="Please enter subject" maxlength="100"
										class="form-control " name="subject" id="subject"
										placeholder="Subject" required>
								</div>
								<!--Input Field End-->
							</div>
						</div>
						<!--Divider End-->
						<!--Input Field Start-->
						<div class="input-field">
							<textarea maxlength="5000"
								data-msg-required="Please enter your message" rows="4"
								class="form-control " name="message" id="message"
								placeholder="Your Message" required></textarea>
						</div>
						<!--Input Field End-->
						<!--Input Field Start-->
						<div class="input-field text-center">
							<input type="submit" value="SEND MESSAGE"
								class="button medium rounded gray font-open-sans mt-40"
								data-loading-text="Loading...">
						</div>
						<!--Input Field End-->
						<div class="alert alert-success hidden animated pulse"
							id="contactSuccess">Thanks, your message has been sent to
							us.</div>
						<div class="alert alert-danger hidden animated shake"
							id="contactError">
							<strong>Error!</strong> There was an error sending your message.
						</div>
					</form>
				</div>
			</div>
		</section>
		<!--Contact Section End-->

		<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>
	

	
</body>

</html>