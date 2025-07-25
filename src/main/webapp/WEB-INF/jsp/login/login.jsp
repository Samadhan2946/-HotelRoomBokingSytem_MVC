<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">


<!-- Mirrored from codervent.com/rocker/demo/vertical/auth-basic-signin.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 May 2025 08:48:10 GMT -->
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--favicon-->
<link rel="icon" href="resource/assets/images/favicon-32x32.png"
	type="image/png" />
<!--plugins-->
<link href="resource/assets/plugins/simplebar/css/simplebar.css"
	rel="stylesheet" />
<link
	href="resource/assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css"
	rel="stylesheet" />
<link href="resource/assets/plugins/metismenu/css/metisMenu.min.css"
	rel="stylesheet" />
<!-- loader-->
<link href="resource/assets/css/pace.min.css" rel="stylesheet" />
<script src="resource/assets/js/pace.min.js"></script>
<!-- Bootstrap CSS -->
<link href="resource/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="resource/assets/css/bootstrap-extended.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&amp;display=swap"
	rel="stylesheet">
<link href="resource/assets/css/app.css" rel="stylesheet">
<link href="resource/assets/css/icons.css" rel="stylesheet">
<title>Rocker - Bootstrap 5 Admin Dashboard Template</title>
</head>

<body class="">
	<!--wrapper-->
	<div class="wrapper">
		<div
			class="section-authentication-signin d-flex align-items-center justify-content-center my-5 my-lg-0">
			<div class="container">
				<div class="row row-cols-1 row-cols-lg-2 row-cols-xl-3">
					<div class="col mx-auto">
						<div class="card mb-0">
							<div class="card-body">
								<div class="p-4">
									<div class="mb-3 text-center">
										<img src="resource/assets/images/logo-icon.png" width="60" alt="" />
									</div>
									<div class="text-center mb-4">
										<h5 class="">Rocker Admin</h5>
										<p class="mb-0">Please log in to your account</p>
									</div>
									<div class="form-body">
										<form class="row g-3" action="loginUser" method="post">
											<div class="col-12">
												<label for="inputEmailAddress" class="form-label">Email</label>
												<input type="email" name="email" class="form-control"
													id="email" placeholder="jhon@example.com" n>
											</div>
											<div class="col-12">
												<label for="inputChoosePassword" class="form-label">Password</label>
												<div class="input-group" id="password">
													<input type="password" name="password" class="form-control border-end-0"
														id="inputChoosePassword" value="12345678"
														placeholder="Enter Password"> <a
														href="javascript:;"
														class="input-group-text bg-transparent"><i
														class='bx bx-hide'></i></a>
												</div>

												<div class="col-12">
													<label for="inputCountry" class="form-label">Select
														Role</label> <select class="form-select" id="role" name="role">
														<option selected>Select Role</option>
														<option value="1">Admin</option>
														<option value="2">Customer</option>
													</select>
												</div>


											</div>
											<div class="col-md-6">
												<div class="form-check form-switch">
													<input class="form-check-input" type="checkbox"
														id="flexSwitchCheckChecked"> <label
														class="form-check-label" for="flexSwitchCheckChecked">Remember
														Me</label>
												</div>
											</div>
											<div class="col-md-6 text-end">
												<a href="authentication-forgot-password.html">Forgot
													Password ?</a>
											</div>
											<div class="col-12">
												<div class="d-grid">
													<button type="submit" class="btn btn-primary">Sign
														in</button>
												</div>
											</div>
											<div class="col-12">
												<div class="text-center ">
													<p class="mb-0">
														Don't have an account yet? <a
															href="user">Sign up here</a>
													</p>
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
	<script
		src="resource/assets/plugins/perfect-scrollbar/js/perfect-scrollbar.js"></script>
	<!--Password show & hide js -->
	<script>
		$(document).ready(
				function() {
					$("#show_hide_password a")
							.on(
									'click',
									function(event) {
										event.preventDefault();
										if ($('#show_hide_password input')
												.attr("type") == "text") {
											$('#show_hide_password input')
													.attr('type', 'password');
											$('#show_hide_password i')
													.addClass("bx-hide");
											$('#show_hide_password i')
													.removeClass("bx-show");
										} else if ($(
												'#show_hide_password input')
												.attr("type") == "password") {
											$('#show_hide_password input')
													.attr('type', 'text');
											$('#show_hide_password i')
													.removeClass("bx-hide");
											$('#show_hide_password i')
													.addClass("bx-show");
										}
									});
				});
	</script>
	<!--app JS-->
	<script src="resource/assets/js/app.js"></script>
</body>


<!-- Mirrored from codervent.com/rocker/demo/vertical/auth-basic-signin.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 May 2025 08:48:11 GMT -->
</html>