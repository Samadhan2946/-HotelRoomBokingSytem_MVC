<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">


<!-- Mirrored from codervent.com/rocker/demo/vertical/auth-basic-signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 May 2025 08:48:11 GMT -->
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--favicon-->
	<link rel="icon" href="resource/assets/images/favicon-32x32.png" type="image/png" />
	<!--plugins-->
	<link href="resource/assets/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
	<link href="resource/assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" />
	<link href="resource/assets/plugins/metismenu/css/metisMenu.min.css" rel="stylesheet" />
	<!-- loader-->
	<link href="resource/assets/css/pace.min.css" rel="stylesheet" />
	<script src="resource/assets/js/pace.min.js"></script>
	<!-- Bootstrap CSS -->
	<link href="resource/assets/css/bootstrap.min.css" rel="stylesheet">
	<link href="resource/assets/css/bootstrap-extended.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&amp;display=swap" rel="stylesheet">
	<link href="resource/assets/css/app.css" rel="stylesheet">
	<link href="resource/assets/css/icons.css" rel="stylesheet">
	<title>Rocker - Bootstrap 5 Admin Dashboard Template</title>
</head>

<body class="">
	<!--wrapper-->
	<div class="wrapper">
		<div class="d-flex align-items-center justify-content-center my-5">
			<div class="container-fluid">
				<div class="row row-cols-1 row-cols-lg-2 row-cols-xl-3">
					<div class="col mx-auto">
						<div class="card mb-0">
							<div class="card-body">
								<div class="p-4">
									<div class="mb-3 text-center">
										<img src="assets/images/logo-icon.png" width="60" alt="" />
									</div>
									<div class="text-center mb-4">
										<h5 class="">Rocker Admin</h5>
										<p class="mb-0">Please fill the below details to create your account</p>
									</div>
									<div class="form-body">
										<form class="row g-3" action="/signUp-User" method="post">
											<div class="col-12">
												<label for="firstName" class="form-label">First Name</label>
												<input type="text"  name="firstName" class="form-control" id="firstName" placeholder="Sam">
											</div>
											<div class="col-12">
												<label for="lastName" class="form-label">Last Name</label>
												<input type="text"  name="lastName" class="form-control" id="lastName" placeholder="Shinde">
											</div>
											<div class="col-12">
												<label for="email" class="form-label">Email Address</label>
												<input type="email" name="email" class="form-control" id="email" placeholder="example@user.com">
											</div>
											<div class="col-12">
												<label> Your Mobile</label>
												<input type="text" name="mobile" class="form-control" id="mobile" placeholder="********90">
											</div>
											<div class="col-12">
												<label for="password" class="form-label">Password</label>
												<div class="input-group" id="password">
													<input type="password" name="password" class="form-control border-end-0" id="password" value="12345678" placeholder="Enter Password"> <a href="javascript:;" class="input-group-text bg-transparent"><i class='bx bx-hide'></i></a>
												</div>
											</div>
											<!-- <!-- <div class="col-12">
												<label for="inputSelectCountry" class="form-label">Country</label>
												<select class="form-select" id="inputSelectCountry" aria-label="Default select example">
													<option selected>India</option>
													<option value="1">United Kingdom</option>
													<option value="2">America</option>
													<option value="3">Dubai</option>
												</select>
											</div> --> 
											<!-- <div class="col-12">
												<div class="form-check form-switch">
													<input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked">
													<label class="form-check-label" for="flexSwitchCheckChecked">I read and agree to Terms & Conditions</label>
												</div>
											</div> -->
											<div class="col-12">
												<div class="d-grid">
													<button type="submit" class="btn btn-primary">Sign up</button>
												</div>
											</div>
											<div class="col-12">
												<div class="text-center ">
													<p class="mb-0">Already have an account? <a href="authentication-signin.html">Sign in here</a></p>
												</div>
											</div>
										</form>
									</div>
									
									
								</div>
							</div>
						</div>
					</div>
				 </div>
				<!--end row-->
			</div>
		</div>
	</div>
	<!--end wrapper-->
	<!-- Bootstrap JS -->
	<script src="resource/assets/js/bootstrap.bundle.min.js"></script>
	<!--plugins-->
	<script src="resource/assets/js/jquery.min.js"></script>
	<script src="resource/assets/plugins/simplebar/js/simplebar.min.js"></script>
	<script src="resource/assets/plugins/metismenu/js/metisMenu.min.js"></script>
	<script src="resource/assets/plugins/perfect-scrollbar/js/perfect-scrollbar.js"></script>
	<!--Password show & hide js -->
	<script>
		$(document).ready(function () {
			$("#show_hide_password a").on('click', function (event) {
				event.preventDefault();
				if ($('#show_hide_password input').attr("type") == "text") {
					$('#show_hide_password input').attr('type', 'password');
					$('#show_hide_password i').addClass("bx-hide");
					$('#show_hide_password i').removeClass("bx-show");
				} else if ($('#show_hide_password input').attr("type") == "password") {
					$('#show_hide_password input').attr('type', 'text');
					$('#show_hide_password i').removeClass("bx-hide");
					$('#show_hide_password i').addClass("bx-show");
				}
			});
		});
	</script>
	<!--app JS-->
	<script src="assets/js/app.js"></script>
</body>


<!-- Mirrored from codervent.com/rocker/demo/vertical/auth-basic-signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 May 2025 08:48:11 GMT -->
</html>