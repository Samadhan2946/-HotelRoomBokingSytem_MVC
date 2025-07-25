<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--favicon-->
<link rel="icon"
	href="${pageContext.request.contextPath}/resource/assets/images/favicon-32x32.png"
	type="image/png" />

<!-- Plugins -->
<link
	href="${pageContext.request.contextPath}/resource/assets/plugins/vectormap/jquery-jvectormap-2.0.2.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resource/assets/plugins/simplebar/css/simplebar.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resource/assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resource/assets/plugins/metismenu/css/metisMenu.min.css"
	rel="stylesheet" />

<!-- Loader -->
<link
	href="${pageContext.request.contextPath}/resource/assets/css/pace.min.css"
	rel="stylesheet" />
<script
	src="${pageContext.request.contextPath}/resource/assets/js/pace.min.js"></script>

<!-- Bootstrap CSS -->
<link
	href="${pageContext.request.contextPath}/resource/assets/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resource/assets/css/bootstrap-extended.css"
	rel="stylesheet">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&amp;display=swap"
	rel="stylesheet">

<!-- Main Styles -->
<link
	href="${pageContext.request.contextPath}/resource/assets/css/app.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resource/assets/css/icons.css"
	rel="stylesheet">

<!-- Theme Style CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/assets/css/dark-theme.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/assets/css/semi-dark.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/assets/css/header-colors.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-H1+8eS1ZfKbD28UnuhYht+TycbNkNBSNZF9..."
	crossorigin="anonymous" referrerpolicy="no-referrer" />


</head>
<body>
	<!--wrapper-->
	<div class="wrapper">
		<!--sidebar wrapper -->
		<div class="sidebar-wrapper" data-simplebar="true">
			<div class="sidebar-header">
				<div>
					<img
						src="${pageContext.request.contextPath}/resource/assets/images/logo-icon.png"
						class="logo-icon" alt="logo icon">

				</div>
				<div>
					<h4 class="logo-text">Rocker</h4>
				</div>
				<div class="toggle-icon ms-auto">
					<i class='bx bx-arrow-back'></i>
				</div>
			</div>
			<!--navigation-->
			<ul class="metismenu" id="menu">
				<li><a href="javascript:;" class="has-arrow">
						<div class="parent-icon">
							<i class='bx bx-home-alt'></i>
						</div>
						<div class="menu-title">Room</div>
				</a>
					<ul>
						<li><a href="/room/add-rooms"><i
								class='bx bx-radio-circle'></i>Add Room</a></li>
						<li><a href="/room/room-list"><i
								class='bx bx-radio-circle'></i>Select All</a></li>
						<li><a href="index3.html"><i class='bx bx-radio-circle'></i>Assign
								Room</a></li>
					</ul></li>
				<li><a href="javascript:;" class="has-arrow">
						<div class="parent-icon">
							<i class="bx bx-category"></i>
						</div>
						<div class="menu-title">Staff</div>
				</a>
					<ul>
						<li><a href="/staff/add-staff"><i
								class='bx bx-radio-circle'></i>Add Staff</a></li>
						<li><a href="/staff/staffList"><i
								class='bx bx-radio-circle'></i>Select All</a></li>
						<li><a href="app-file-manager.html"><i
								class='bx bx-radio-circle'></i>File Manager</a></li>

					</ul></li>


				<li><a href="javascript:;" class="has-arrow">
						<div class="parent-icon">
							<i class="bx bx-category"></i>
						</div>
						<div class="menu-title">Customer</div>
				</a>
					<ul>
						<li><a href="/customer/add-customer"><i
								class='bx bx-radio-circle'></i>Add Customer</a></li>
						<li><a href="/customer/customer-list"><i
								class='bx bx-radio-circle'></i>Select All</a></li>
						<li><a href="app-file-manager.html"><i
								class='bx bx-radio-circle'></i>File Manager</a></li>

					</ul></li>

				<li><a href="javascript:;" class="has-arrow">
						<div class="parent-icon">
							<i class="bx bx-category"></i>
						</div>
						<div class="menu-title">Book Now</div>
				</a>
					<ul>
						<li><a href="/roomBook/singleRoomList"><i
								class='bx bx-radio-circle'></i>Single Room</a></li>
						<li><a href="/roomBook/doubleRoomList"><i
								class='bx bx-radio-circle'></i>Double Room</a></li>
						<li><a href="app-file-manager.html"><i
								class='bx bx-radio-circle'></i>File Manager</a></li>

					</ul></li>
					

				<li class="menu-label">UI Elements</li>
				<li><a href="widgets.html">
						<div class="parent-icon">
							<i class='bx bx-cookie'></i>
						</div>
						<div class="menu-title">Widgets</div>
				</a></li>
				<li><a href="javascript:;" class="has-arrow">
						<div class="parent-icon">
							<i class='bx bx-cart'></i>
						</div>
						<div class="menu-title">eCommerce</div>
				</a>
					<ul>
						<li><a href="ecommerce-products.html"><i
								class='bx bx-radio-circle'></i>Products</a></li>
						<li><a href="ecommerce-products-details.html"><i
								class='bx bx-radio-circle'></i>Product Details</a></li>
						<li><a href="ecommerce-add-new-products.html"><i
								class='bx bx-radio-circle'></i>Add New Products</a></li>
						<li><a href="ecommerce-orders.html"><i
								class='bx bx-radio-circle'></i>Orders</a></li>
					</ul></li>
				<li><a class="has-arrow" href="javascript:;">
						<div class="parent-icon">
							<i class='bx bx-bookmark-heart'></i>
						</div>
						<div class="menu-title">Components</div>
				</a>
					<ul>
						<li><a href="component-alerts.html"><i
								class='bx bx-radio-circle'></i>Alerts</a></li>
						<li><a href="component-accordions.html"><i
								class='bx bx-radio-circle'></i>Accordions</a></li>
						<li><a href="component-badges.html"><i
								class='bx bx-radio-circle'></i>Badges</a></li>
						<li><a href="component-buttons.html"><i
								class='bx bx-radio-circle'></i>Buttons</a></li>
						<li><a href="component-cards.html"><i
								class='bx bx-radio-circle'></i>Cards</a></li>
						<li><a href="component-carousels.html"><i
								class='bx bx-radio-circle'></i>Carousels</a></li>
						<li><a href="component-list-groups.html"><i
								class='bx bx-radio-circle'></i>List Groups</a></li>
						<li><a href="component-media-object.html"><i
								class='bx bx-radio-circle'></i>Media Objects</a></li>
						<li><a href="component-modals.html"><i
								class='bx bx-radio-circle'></i>Modals</a></li>
						<li><a href="component-navs-tabs.html"><i
								class='bx bx-radio-circle'></i>Navs & Tabs</a></li>
						<li><a href="component-navbar.html"><i
								class='bx bx-radio-circle'></i>Navbar</a></li>
						<li><a href="component-paginations.html"><i
								class='bx bx-radio-circle'></i>Pagination</a></li>
						<li><a href="component-popovers-tooltips.html"><i
								class='bx bx-radio-circle'></i>Popovers & Tooltips</a></li>
						<li><a href="component-progress-bars.html"><i
								class='bx bx-radio-circle'></i>Progress</a></li>
						<li><a href="component-spinners.html"><i
								class='bx bx-radio-circle'></i>Spinners</a></li>
						<li><a href="component-notifications.html"><i
								class='bx bx-radio-circle'></i>Notifications</a></li>
						<li><a href="component-avtars-chips.html"><i
								class='bx bx-radio-circle'></i>Avatrs & Chips</a></li>
					</ul></li>
				<li><a class="has-arrow" href="javascript:;">
						<div class="parent-icon">
							<i class="bx bx-repeat"></i>
						</div>
						<div class="menu-title">Content</div>
				</a>
					<ul>
						<li><a href="content-grid-system.html"><i
								class='bx bx-radio-circle'></i>Grid System</a></li>
						<li><a href="content-typography.html"><i
								class='bx bx-radio-circle'></i>Typography</a></li>
						<li><a href="content-text-utilities.html"><i
								class='bx bx-radio-circle'></i>Text Utilities</a></li>
					</ul></li>
				<li><a class="has-arrow" href="javascript:;">
						<div class="parent-icon">
							<i class="bx bx-donate-blood"></i>
						</div>
						<div class="menu-title">Icons</div>
				</a>
					<ul>
						<li><a href="icons-line-icons.html"><i
								class='bx bx-radio-circle'></i>Line Icons</a></li>
						<li><a href="icons-boxicons.html"><i
								class='bx bx-radio-circle'></i>Boxicons</a></li>
						<li><a href="icons-feather-icons.html"><i
								class='bx bx-radio-circle'></i>Feather Icons</a></li>
					</ul></li>
				<li><a href="form-froala-editor.html">
						<div class="parent-icon">
							<i class='bx bx-code-alt'></i>
						</div>
						<div class="menu-title">Froala Editor</div>
				</a></li>
				<li class="menu-label">Forms & Tables</li>
				<li><a class="has-arrow" href="javascript:;">
						<div class="parent-icon">
							<i class='bx bx-message-square-edit'></i>
						</div>
						<div class="menu-title">Forms</div>
				</a>
					<ul>
						<li><a href="form-elements.html"><i
								class='bx bx-radio-circle'></i>Form Elements</a></li>
						<li><a href="form-input-group.html"><i
								class='bx bx-radio-circle'></i>Input Groups</a></li>
						<li><a href="form-radios-and-checkboxes.html"><i
								class='bx bx-radio-circle'></i>Radios & Checkboxes</a></li>
						<li><a href="form-layouts.html"><i
								class='bx bx-radio-circle'></i>Forms Layouts</a></li>
						<li><a href="form-validations.html"><i
								class='bx bx-radio-circle'></i>Form Validation</a></li>
						<li><a href="form-wizard.html"><i
								class='bx bx-radio-circle'></i>Form Wizard</a></li>
						<li><a href="form-text-editor.html"><i
								class='bx bx-radio-circle'></i>Text Editor</a></li>
						<li><a href="form-file-upload.html"><i
								class='bx bx-radio-circle'></i>File Upload</a></li>
						<li><a href="form-date-time-pickes.html"><i
								class='bx bx-radio-circle'></i>Date Pickers</a></li>
						<li><a href="form-select2.html"><i
								class='bx bx-radio-circle'></i>Select2</a></li>
						<li><a href="form-repeater.html"><i
								class='bx bx-radio-circle'></i>Form Repeater</a></li>
					</ul></li>
				<li><a class="has-arrow" href="javascript:;">
						<div class="parent-icon">
							<i class="bx bx-grid-alt"></i>
						</div>
						<div class="menu-title">Tables</div>
				</a>
					<ul>
						<li><a href="table-basic-table.html"><i
								class='bx bx-radio-circle'></i>Basic Table</a></li>
						<li><a href="table-datatable.html"><i
								class='bx bx-radio-circle'></i>Data Table</a></li>
					</ul></li>
				<li class="menu-label">Pages</li>
				<li><a class="has-arrow" href="javascript:;">
						<div class="parent-icon">
							<i class="bx bx-lock"></i>
						</div>
						<div class="menu-title">Authentication</div>
				</a>
					<ul>
						<li><a class="has-arrow" href="javascript:;"><i
								class='bx bx-radio-circle'></i>Basic</a>
							<ul>
								<li><a href="auth-basic-signin.html" target="_blank"><i
										class='bx bx-radio-circle'></i>Sign In</a></li>
								<li><a href="auth-basic-signup.html" target="_blank"><i
										class='bx bx-radio-circle'></i>Sign Up</a></li>
								<li><a href="auth-basic-forgot-password.html"
									target="_blank"><i class='bx bx-radio-circle'></i>Forgot
										Password</a></li>
								<li><a href="auth-basic-reset-password.html"
									target="_blank"><i class='bx bx-radio-circle'></i>Reset
										Password</a></li>
							</ul></li>
						<li><a class="has-arrow" href="javascript:;"><i
								class='bx bx-radio-circle'></i>Cover</a>
							<ul>
								<li><a href="auth-cover-signin.html" target="_blank"><i
										class='bx bx-radio-circle'></i>Sign In</a></li>
								<li><a href="auth-cover-signup.html" target="_blank"><i
										class='bx bx-radio-circle'></i>Sign Up</a></li>
								<li><a href="auth-cover-forgot-password.html"
									target="_blank"><i class='bx bx-radio-circle'></i>Forgot
										Password</a></li>
								<li><a href="auth-cover-reset-password.html"
									target="_blank"><i class='bx bx-radio-circle'></i>Reset
										Password</a></li>
							</ul></li>
						<li><a class="has-arrow" href="javascript:;"><i
								class='bx bx-radio-circle'></i>With Header Footer</a>
							<ul>
								<li><a href="auth-header-footer-signin.html"
									target="_blank"><i class='bx bx-radio-circle'></i>Sign In</a></li>
								<li><a href="auth-header-footer-signup.html"
									target="_blank"><i class='bx bx-radio-circle'></i>Sign Up</a></li>
								<li><a href="auth-header-footer-forgot-password.html"
									target="_blank"><i class='bx bx-radio-circle'></i>Forgot
										Password</a></li>
								<li><a href="auth-header-footer-reset-password.html"
									target="_blank"><i class='bx bx-radio-circle'></i>Reset
										Password</a></li>
							</ul></li>
					</ul></li>
				<li><a href="user-profile.html">
						<div class="parent-icon">
							<i class="bx bx-user-circle"></i>
						</div>
						<div class="menu-title">User Profile</div>
				</a></li>
				<li><a href="timeline.html">
						<div class="parent-icon">
							<i class="bx bx-video-recording"></i>
						</div>
						<div class="menu-title">Timeline</div>
				</a></li>
				<li><a class="has-arrow" href="javascript:;">
						<div class="parent-icon">
							<i class="bx bx-error"></i>
						</div>
						<div class="menu-title">Errors</div>
				</a>
					<ul>
						<li><a href="errors-404-error.html" target="_blank"><i
								class='bx bx-radio-circle'></i>404 Error</a></li>
						<li><a href="errors-500-error.html" target="_blank"><i
								class='bx bx-radio-circle'></i>500 Error</a></li>
						<li><a href="errors-coming-soon.html" target="_blank"><i
								class='bx bx-radio-circle'></i>Coming Soon</a></li>
						<li><a href="error-blank-page.html" target="_blank"><i
								class='bx bx-radio-circle'></i>Blank Page</a></li>
					</ul></li>
				<li><a href="faq.html">
						<div class="parent-icon">
							<i class="bx bx-help-circle"></i>
						</div>
						<div class="menu-title">FAQ</div>
				</a></li>
				<li><a href="pricing-table.html">
						<div class="parent-icon">
							<i class="bx bx-diamond"></i>
						</div>
						<div class="menu-title">Pricing</div>
				</a></li>
				<li class="menu-label">Charts & Maps</li>
				<li><a class="has-arrow" href="javascript:;">
						<div class="parent-icon">
							<i class="bx bx-line-chart"></i>
						</div>
						<div class="menu-title">Charts</div>
				</a>
					<ul>
						<li><a href="charts-apex-chart.html"><i
								class='bx bx-radio-circle'></i>Apex</a></li>
						<li><a href="charts-chartjs.html"><i
								class='bx bx-radio-circle'></i>Chartjs</a></li>
						<li><a href="charts-highcharts.html"><i
								class='bx bx-radio-circle'></i>Highcharts</a></li>
					</ul></li>
				<li><a class="has-arrow" href="javascript:;">
						<div class="parent-icon">
							<i class="bx bx-map-alt"></i>
						</div>
						<div class="menu-title">Maps</div>
				</a>
					<ul>
						<li><a href="map-google-maps.html"><i
								class='bx bx-radio-circle'></i>Google Maps</a></li>
						<li><a href="map-vector-maps.html"><i
								class='bx bx-radio-circle'></i>Vector Maps</a></li>
					</ul></li>
				<li class="menu-label">Others</li>
				<li><a class="has-arrow" href="javascript:;">
						<div class="parent-icon">
							<i class="bx bx-menu"></i>
						</div>
						<div class="menu-title">Menu Levels</div>
				</a>
					<ul>
						<li><a class="has-arrow" href="javascript:;"><i
								class='bx bx-radio-circle'></i>Level One</a>
							<ul>
								<li><a class="has-arrow" href="javascript:;"><i
										class='bx bx-radio-circle'></i>Level Two</a>
									<ul>
										<li><a href="javascript:;"><i
												class='bx bx-radio-circle'></i>Level Three</a></li>
									</ul></li>
							</ul></li>
					</ul></li>
				<li><a
					href="https://codervent.com/rocker/documentation/index.html"
					target="_blank">
						<div class="parent-icon">
							<i class="bx bx-folder"></i>
						</div>
						<div class="menu-title">Documentation</div>
				</a></li>
				<li><a href="https://themeforest.net/user/codervent"
					target="_blank">
						<div class="parent-icon">
							<i class="bx bx-support"></i>
						</div>
						<div class="menu-title">Support</div>
				</a></li>
			</ul>
			<!--end navigation-->
		</div>
		<!--end sidebar wrapper -->
		<!--start header -->
		<header>
			<div class="topbar d-flex align-items-center">
				<nav class="navbar navbar-expand gap-3">
					<div class="mobile-toggle-menu">
						<i class='bx bx-menu'></i>
					</div>

					<div class="search-bar d-lg-block d-none" data-bs-toggle="modal"
						data-bs-target="#SearchModal">
						<a href="avascript:;" class="btn d-flex align-items-center"><i
							class='bx bx-search'></i>Search</a>
					</div>

					<div class="top-menu ms-auto">
						<ul class="navbar-nav align-items-center gap-1">
							<li class="nav-item mobile-search-icon d-flex d-lg-none"
								data-bs-toggle="modal" data-bs-target="#SearchModal"><a
								class="nav-link" href="avascript:;"><i class='bx bx-search'></i>
							</a></li>
							<li class="nav-item dropdown dropdown-laungauge d-none d-sm-flex">
								<a class="nav-link dropdown-toggle dropdown-toggle-nocaret"
								href="avascript:;" data-bs-toggle="dropdown"><img
									src="assets/images/county/02.png" width="22" alt=""> </a>
								<ul class="dropdown-menu dropdown-menu-end">
									<li><a
										class="dropdown-item d-flex align-items-center py-2"
										href="javascript:;"><img src="assets/images/county/01.png"
											width="20" alt=""><span class="ms-2">English</span></a></li>
									<li><a
										class="dropdown-item d-flex align-items-center py-2"
										href="javascript:;"><img src="assets/images/county/02.png"
											width="20" alt=""><span class="ms-2">Catalan</span></a></li>
									<li><a
										class="dropdown-item d-flex align-items-center py-2"
										href="javascript:;"><img src="assets/images/county/03.png"
											width="20" alt=""><span class="ms-2">French</span></a></li>
									<li><a
										class="dropdown-item d-flex align-items-center py-2"
										href="javascript:;"><img src="assets/images/county/04.png"
											width="20" alt=""><span class="ms-2">Belize</span></a></li>
									<li><a
										class="dropdown-item d-flex align-items-center py-2"
										href="javascript:;"><img src="assets/images/county/05.png"
											width="20" alt=""><span class="ms-2">Colombia</span></a></li>
									<li><a
										class="dropdown-item d-flex align-items-center py-2"
										href="javascript:;"><img src="assets/images/county/06.png"
											width="20" alt=""><span class="ms-2">Spanish</span></a></li>
									<li><a
										class="dropdown-item d-flex align-items-center py-2"
										href="javascript:;"><img src="assets/images/county/07.png"
											width="20" alt=""><span class="ms-2">Georgian</span></a></li>
									<li><a
										class="dropdown-item d-flex align-items-center py-2"
										href="javascript:;"><img src="assets/images/county/08.png"
											width="20" alt=""><span class="ms-2">Hindi</span></a></li>
								</ul>
							</li>
							<li class="nav-item dark-mode d-none d-sm-flex"><a
								class="nav-link dark-mode-icon" href="javascript:;"><i
									class='bx bx-moon'></i> </a></li>
							<li class="nav-item dropdown dropdown-app"><a
								class="nav-link dropdown-toggle dropdown-toggle-nocaret"
								data-bs-toggle="dropdown" href="javascript:;"><i
									class='bx bx-grid-alt'></i></a>
								<div class="dropdown-menu dropdown-menu-end p-0">
									<div class="app-container p-2 my-2">
										<div
											class="row gx-0 gy-2 row-cols-3 justify-content-center p-2">
											<div class="col">
												<a href="javascript:;">
													<div class="app-box text-center">
														<div class="app-icon">
															<img src="assets/images/app/slack.png" width="30" alt="">
														</div>
														<div class="app-name">
															<p class="mb-0 mt-1">Slack</p>
														</div>
													</div>
												</a>
											</div>
											<div class="col">
												<a href="javascript:;">
													<div class="app-box text-center">
														<div class="app-icon">
															<img src="assets/images/app/behance.png" width="30"
																alt="">
														</div>
														<div class="app-name">
															<p class="mb-0 mt-1">Behance</p>
														</div>
													</div>
												</a>
											</div>
											<div class="col">
												<a href="javascript:;">
													<div class="app-box text-center">
														<div class="app-icon">
															<img src="assets/images/app/google-drive.png" width="30"
																alt="">
														</div>
														<div class="app-name">
															<p class="mb-0 mt-1">Dribble</p>
														</div>
													</div>
												</a>
											</div>
											<div class="col">
												<a href="javascript:;">
													<div class="app-box text-center">
														<div class="app-icon">
															<img src="assets/images/app/outlook.png" width="30"
																alt="">
														</div>
														<div class="app-name">
															<p class="mb-0 mt-1">Outlook</p>
														</div>
													</div>
												</a>
											</div>
											<div class="col">
												<a href="javascript:;">
													<div class="app-box text-center">
														<div class="app-icon">
															<img src="assets/images/app/github.png" width="30" alt="">
														</div>
														<div class="app-name">
															<p class="mb-0 mt-1">GitHub</p>
														</div>
													</div>
												</a>
											</div>
											<div class="col">
												<a href="javascript:;">
													<div class="app-box text-center">
														<div class="app-icon">
															<img src="assets/images/app/stack-overflow.png"
																width="30" alt="">
														</div>
														<div class="app-name">
															<p class="mb-0 mt-1">Stack</p>
														</div>
													</div>
												</a>
											</div>
											<div class="col">
												<a href="javascript:;">
													<div class="app-box text-center">
														<div class="app-icon">
															<img src="assets/images/app/figma.png" width="30" alt="">
														</div>
														<div class="app-name">
															<p class="mb-0 mt-1">Stack</p>
														</div>
													</div>
												</a>
											</div>
											<div class="col">
												<a href="javascript:;">
													<div class="app-box text-center">
														<div class="app-icon">
															<img src="assets/images/app/twitter.png" width="30"
																alt="">
														</div>
														<div class="app-name">
															<p class="mb-0 mt-1">Twitter</p>
														</div>
													</div>
												</a>
											</div>
											<div class="col">
												<a href="javascript:;">
													<div class="app-box text-center">
														<div class="app-icon">
															<img src="assets/images/app/google-calendar.png"
																width="30" alt="">
														</div>
														<div class="app-name">
															<p class="mb-0 mt-1">Calendar</p>
														</div>
													</div>
												</a>
											</div>
											<div class="col">
												<a href="javascript:;">
													<div class="app-box text-center">
														<div class="app-icon">
															<img src="assets/images/app/spotify.png" width="30"
																alt="">
														</div>
														<div class="app-name">
															<p class="mb-0 mt-1">Spotify</p>
														</div>
													</div>
												</a>
											</div>
											<div class="col">
												<a href="javascript:;">
													<div class="app-box text-center">
														<div class="app-icon">
															<img src="assets/images/app/google-photos.png" width="30"
																alt="">
														</div>
														<div class="app-name">
															<p class="mb-0 mt-1">Photos</p>
														</div>
													</div>
												</a>
											</div>
											<div class="col">
												<a href="javascript:;">
													<div class="app-box text-center">
														<div class="app-icon">
															<img src="assets/images/app/pinterest.png" width="30"
																alt="">
														</div>
														<div class="app-name">
															<p class="mb-0 mt-1">Photos</p>
														</div>
													</div>
												</a>
											</div>
											<div class="col">
												<a href="javascript:;">
													<div class="app-box text-center">
														<div class="app-icon">
															<img src="assets/images/app/linkedin.png" width="30"
																alt="">
														</div>
														<div class="app-name">
															<p class="mb-0 mt-1">linkedin</p>
														</div>
													</div>
												</a>
											</div>
											<div class="col">
												<a href="javascript:;">
													<div class="app-box text-center">
														<div class="app-icon">
															<img src="assets/images/app/dribble.png" width="30"
																alt="">
														</div>
														<div class="app-name">
															<p class="mb-0 mt-1">Dribble</p>
														</div>
													</div>
												</a>
											</div>
											<div class="col">
												<a href="javascript:;">
													<div class="app-box text-center">
														<div class="app-icon">
															<img src="assets/images/app/youtube.png" width="30"
																alt="">
														</div>
														<div class="app-name">
															<p class="mb-0 mt-1">YouTube</p>
														</div>
													</div>
												</a>
											</div>
											<div class="col">
												<a href="javascript:;">
													<div class="app-box text-center">
														<div class="app-icon">
															<img src="assets/images/app/google.png" width="30" alt="">
														</div>
														<div class="app-name">
															<p class="mb-0 mt-1">News</p>
														</div>
													</div>
												</a>
											</div>
											<div class="col">
												<a href="javascript:;">
													<div class="app-box text-center">
														<div class="app-icon">
															<img src="assets/images/app/envato.png" width="30" alt="">
														</div>
														<div class="app-name">
															<p class="mb-0 mt-1">Envato</p>
														</div>
													</div>
												</a>
											</div>
											<div class="col">
												<a href="javascript:;">
													<div class="app-box text-center">
														<div class="app-icon">
															<img src="assets/images/app/safari.png" width="30" alt="">
														</div>
														<div class="app-name">
															<p class="mb-0 mt-1">Safari</p>
														</div>
													</div>
												</a>
											</div>

										</div>
										<!--end row-->

									</div>
								</div></li>

							<li class="nav-item dropdown dropdown-large"><a
								class="nav-link dropdown-toggle dropdown-toggle-nocaret position-relative"
								href="#" data-bs-toggle="dropdown"><span class="alert-count">7</span>
									<i class='bx bx-bell'></i> </a>
								<div class="dropdown-menu dropdown-menu-end">
									<a href="javascript:;">
										<div class="msg-header">
											<p class="msg-header-title">Notifications</p>
											<p class="msg-header-badge">8 New</p>
										</div>
									</a>
									<div class="header-notifications-list">
										<a class="dropdown-item" href="javascript:;">
											<div class="d-flex align-items-center">
												<div class="user-online">
													<img src="assets/images/avatars/avatar-1.png"
														class="msg-avatar" alt="user avatar">
												</div>
												<div class="flex-grow-1">
													<h6 class="msg-name">
														Daisy Anderson<span class="msg-time float-end">5
															sec ago</span>
													</h6>
													<p class="msg-info">The standard chunk of lorem</p>
												</div>
											</div>
										</a> <a class="dropdown-item" href="javascript:;">
											<div class="d-flex align-items-center">
												<div class="notify bg-light-danger text-danger">dc</div>
												<div class="flex-grow-1">
													<h6 class="msg-name">
														New Orders <span class="msg-time float-end">2 min
															ago</span>
													</h6>
													<p class="msg-info">You have recived new orders</p>
												</div>
											</div>
										</a> <a class="dropdown-item" href="javascript:;">
											<div class="d-flex align-items-center">
												<div class="user-online">
													<img src="assets/images/avatars/avatar-2.png"
														class="msg-avatar" alt="user avatar">
												</div>
												<div class="flex-grow-1">
													<h6 class="msg-name">
														Althea Cabardo <span class="msg-time float-end">14
															sec ago</span>
													</h6>
													<p class="msg-info">Many desktop publishing packages</p>
												</div>
											</div>
										</a> <a class="dropdown-item" href="javascript:;">
											<div class="d-flex align-items-center">
												<div class="notify bg-light-success text-success">
													<img src="assets/images/app/outlook.png" width="25"
														alt="user avatar">
												</div>
												<div class="flex-grow-1">
													<h6 class="msg-name">
														Account Created<span class="msg-time float-end">28
															min ago</span>
													</h6>
													<p class="msg-info">Successfully created new email</p>
												</div>
											</div>
										</a> <a class="dropdown-item" href="javascript:;">
											<div class="d-flex align-items-center">
												<div class="notify bg-light-info text-info">Ss</div>
												<div class="flex-grow-1">
													<h6 class="msg-name">
														New Product Approved <span class="msg-time float-end">2
															hrs ago</span>
													</h6>
													<p class="msg-info">Your new product has approved</p>
												</div>
											</div>
										</a> <a class="dropdown-item" href="javascript:;">
											<div class="d-flex align-items-center">
												<div class="user-online">
													<img src="assets/images/avatars/avatar-4.png"
														class="msg-avatar" alt="user avatar">
												</div>
												<div class="flex-grow-1">
													<h6 class="msg-name">
														Katherine Pechon <span class="msg-time float-end">15
															min ago</span>
													</h6>
													<p class="msg-info">Making this the first true
														generator</p>
												</div>
											</div>
										</a> <a class="dropdown-item" href="javascript:;">
											<div class="d-flex align-items-center">
												<div class="notify bg-light-success text-success">
													<i class='bx bx-check-square'></i>
												</div>
												<div class="flex-grow-1">
													<h6 class="msg-name">
														Your item is shipped <span class="msg-time float-end">5
															hrs ago</span>
													</h6>
													<p class="msg-info">Successfully shipped your item</p>
												</div>
											</div>
										</a> <a class="dropdown-item" href="javascript:;">
											<div class="d-flex align-items-center">
												<div class="notify bg-light-primary">
													<img src="assets/images/app/github.png" width="25"
														alt="user avatar">
												</div>
												<div class="flex-grow-1">
													<h6 class="msg-name">
														New 24 authors<span class="msg-time float-end">1
															day ago</span>
													</h6>
													<p class="msg-info">24 new authors joined last week</p>
												</div>
											</div>
										</a> <a class="dropdown-item" href="javascript:;">
											<div class="d-flex align-items-center">
												<div class="user-online">
													<img src="assets/images/avatars/avatar-8.png"
														class="msg-avatar" alt="user avatar">
												</div>
												<div class="flex-grow-1">
													<h6 class="msg-name">
														Peter Costanzo <span class="msg-time float-end">6
															hrs ago</span>
													</h6>
													<p class="msg-info">It was popularised in the 1960s</p>
												</div>
											</div>
										</a>
									</div>
									<a href="javascript:;">
										<div class="text-center msg-footer">
											<button class="btn btn-primary w-100">View All
												Notifications</button>
										</div>
									</a>
								</div></li>
							<li class="nav-item dropdown dropdown-large"><a
								class="nav-link dropdown-toggle dropdown-toggle-nocaret position-relative"
								href="#" role="button" data-bs-toggle="dropdown"
								aria-expanded="false"> <span class="alert-count">8</span> <i
									class='bx bx-shopping-bag'></i>
							</a>
								<div class="dropdown-menu dropdown-menu-end">
									<a href="javascript:;">
										<div class="msg-header">
											<p class="msg-header-title">My Cart</p>
											<p class="msg-header-badge">10 Items</p>
										</div>
									</a>
									<div class="header-message-list">
										<a class="dropdown-item" href="javascript:;">
											<div class="d-flex align-items-center gap-3">
												<div class="position-relative">
													<div class="cart-product rounded-circle bg-light">
														<img src="assets/images/products/11.png" class=""
															alt="product image">
													</div>
												</div>
												<div class="flex-grow-1">
													<h6 class="cart-product-title mb-0">Men White T-Shirt</h6>
													<p class="cart-product-price mb-0">1 X $29.00</p>
												</div>
												<div class="">
													<p class="cart-price mb-0">$250</p>
												</div>
												<div class="cart-product-cancel">
													<i class="bx bx-x"></i>
												</div>
											</div>
										</a> <a class="dropdown-item" href="javascript:;">
											<div class="d-flex align-items-center gap-3">
												<div class="position-relative">
													<div class="cart-product rounded-circle bg-light">
														<img src="assets/images/products/02.png" class=""
															alt="product image">
													</div>
												</div>
												<div class="flex-grow-1">
													<h6 class="cart-product-title mb-0">Men White T-Shirt</h6>
													<p class="cart-product-price mb-0">1 X $29.00</p>
												</div>
												<div class="">
													<p class="cart-price mb-0">$250</p>
												</div>
												<div class="cart-product-cancel">
													<i class="bx bx-x"></i>
												</div>
											</div>
										</a> <a class="dropdown-item" href="javascript:;">
											<div class="d-flex align-items-center gap-3">
												<div class="position-relative">
													<div class="cart-product rounded-circle bg-light">
														<img src="assets/images/products/03.png" class=""
															alt="product image">
													</div>
												</div>
												<div class="flex-grow-1">
													<h6 class="cart-product-title mb-0">Men White T-Shirt</h6>
													<p class="cart-product-price mb-0">1 X $29.00</p>
												</div>
												<div class="">
													<p class="cart-price mb-0">$250</p>
												</div>
												<div class="cart-product-cancel">
													<i class="bx bx-x"></i>
												</div>
											</div>
										</a> <a class="dropdown-item" href="javascript:;">
											<div class="d-flex align-items-center gap-3">
												<div class="position-relative">
													<div class="cart-product rounded-circle bg-light">
														<img src="assets/images/products/04.png" class=""
															alt="product image">
													</div>
												</div>
												<div class="flex-grow-1">
													<h6 class="cart-product-title mb-0">Men White T-Shirt</h6>
													<p class="cart-product-price mb-0">1 X $29.00</p>
												</div>
												<div class="">
													<p class="cart-price mb-0">$250</p>
												</div>
												<div class="cart-product-cancel">
													<i class="bx bx-x"></i>
												</div>
											</div>
										</a> <a class="dropdown-item" href="javascript:;">
											<div class="d-flex align-items-center gap-3">
												<div class="position-relative">
													<div class="cart-product rounded-circle bg-light">
														<img src="assets/images/products/05.png" class=""
															alt="product image">
													</div>
												</div>
												<div class="flex-grow-1">
													<h6 class="cart-product-title mb-0">Men White T-Shirt</h6>
													<p class="cart-product-price mb-0">1 X $29.00</p>
												</div>
												<div class="">
													<p class="cart-price mb-0">$250</p>
												</div>
												<div class="cart-product-cancel">
													<i class="bx bx-x"></i>
												</div>
											</div>
										</a> <a class="dropdown-item" href="javascript:;">
											<div class="d-flex align-items-center gap-3">
												<div class="position-relative">
													<div class="cart-product rounded-circle bg-light">
														<img src="assets/images/products/06.png" class=""
															alt="product image">
													</div>
												</div>
												<div class="flex-grow-1">
													<h6 class="cart-product-title mb-0">Men White T-Shirt</h6>
													<p class="cart-product-price mb-0">1 X $29.00</p>
												</div>
												<div class="">
													<p class="cart-price mb-0">$250</p>
												</div>
												<div class="cart-product-cancel">
													<i class="bx bx-x"></i>
												</div>
											</div>
										</a> <a class="dropdown-item" href="javascript:;">
											<div class="d-flex align-items-center gap-3">
												<div class="position-relative">
													<div class="cart-product rounded-circle bg-light">
														<img src="assets/images/products/07.png" class=""
															alt="product image">
													</div>
												</div>
												<div class="flex-grow-1">
													<h6 class="cart-product-title mb-0">Men White T-Shirt</h6>
													<p class="cart-product-price mb-0">1 X $29.00</p>
												</div>
												<div class="">
													<p class="cart-price mb-0">$250</p>
												</div>
												<div class="cart-product-cancel">
													<i class="bx bx-x"></i>
												</div>
											</div>
										</a> <a class="dropdown-item" href="javascript:;">
											<div class="d-flex align-items-center gap-3">
												<div class="position-relative">
													<div class="cart-product rounded-circle bg-light">
														<img src="assets/images/products/08.png" class=""
															alt="product image">
													</div>
												</div>
												<div class="flex-grow-1">
													<h6 class="cart-product-title mb-0">Men White T-Shirt</h6>
													<p class="cart-product-price mb-0">1 X $29.00</p>
												</div>
												<div class="">
													<p class="cart-price mb-0">$250</p>
												</div>
												<div class="cart-product-cancel">
													<i class="bx bx-x"></i>
												</div>
											</div>
										</a> <a class="dropdown-item" href="javascript:;">
											<div class="d-flex align-items-center gap-3">
												<div class="position-relative">
													<div class="cart-product rounded-circle bg-light">
														<img src="assets/images/products/09.png" class=""
															alt="product image">
													</div>
												</div>
												<div class="flex-grow-1">
													<h6 class="cart-product-title mb-0">Men White T-Shirt</h6>
													<p class="cart-product-price mb-0">1 X $29.00</p>
												</div>
												<div class="">
													<p class="cart-price mb-0">$250</p>
												</div>
												<div class="cart-product-cancel">
													<i class="bx bx-x"></i>
												</div>
											</div>
										</a>
									</div>
									<a href="javascript:;">
										<div class="text-center msg-footer">
											<div
												class="d-flex align-items-center justify-content-between mb-3">
												<h5 class="mb-0">Total</h5>
												<h5 class="mb-0 ms-auto">$489.00</h5>
											</div>
											<button class="btn btn-primary w-100">Checkout</button>
										</div>
									</a>
								</div></li>
						</ul>
					</div>
					<div class="user-box dropdown px-3">
						<a
							class="d-flex align-items-center nav-link dropdown-toggle gap-3 dropdown-toggle-nocaret"
							href="#" role="button" data-bs-toggle="dropdown"
							aria-expanded="false"> <img
							src="assets/images/avatars/avatar-2.png" class="user-img"
							alt="user avatar">
							<div class="user-info">
								<p class="user-name mb-0">Pauline Seitz</p>
								<p class="designattion mb-0">Web Designer</p>
							</div>
						</a>
						<ul class="dropdown-menu dropdown-menu-end">
							<li><a class="dropdown-item d-flex align-items-center"
								href="javascript:;"><i class="bx bx-user fs-5"></i><span>Profile</span></a>
							</li>
							<li><a class="dropdown-item d-flex align-items-center"
								href="javascript:;"><i class="bx bx-cog fs-5"></i><span>Settings</span></a>
							</li>
							<li><a class="dropdown-item d-flex align-items-center"
								href="javascript:;"><i class="bx bx-home-circle fs-5"></i><span>Dashboard</span></a>
							</li>
							<li><a class="dropdown-item d-flex align-items-center"
								href="javascript:;"><i class="bx bx-dollar-circle fs-5"></i><span>Earnings</span></a>
							</li>
							<li><a class="dropdown-item d-flex align-items-center"
								href="javascript:;"><i class="bx bx-download fs-5"></i><span>Downloads</span></a>
							</li>
							<li>
								<div class="dropdown-divider mb-0"></div>
							</li>
							<li><a class="dropdown-item d-flex align-items-center"
								href="javascript:;"><i class="bx bx-log-out-circle"></i><span>Logout</span></a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</header>
	</div>

	<!--end header -->


	<!-- Bootstrap JS -->
	<!-- Bootstrap Bundle JS -->
	<script
		src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>

	<!-- Plugins -->
	<script
		src="${pageContext.request.contextPath}/resource/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resource/assets/plugins/simplebar/js/simplebar.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resource/assets/plugins/metismenu/js/metisMenu.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resource/assets/plugins/perfect-scrollbar/js/perfect-scrollbar.js"></script>
	<script
		src="${pageContext.request.contextPath}/resource/assets/plugins/vectormap/jquery-jvectormap-2.0.2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resource/assets/plugins/vectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script
		src="${pageContext.request.contextPath}/resource/assets/plugins/chartjs/js/chart.js"></script>
	<script
		src="${pageContext.request.contextPath}/resource/assets/js/index.js"></script>

	<!-- App JS -->
	<script
		src="${pageContext.request.contextPath}/resource/assets/js/app.js"></script>

	<script>
		new PerfectScrollbar(".app-container");
	</script>


</body>
</html>