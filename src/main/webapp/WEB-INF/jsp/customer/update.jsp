<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../common/header.jsp" />

<div class="wrapper">
	<div class="page-wrapper">
		<div class="page-content">
			<div class="row">
				<div class="col-xl-6 mx-auto">
					<div class="card">
						<div class="card-body p-4">
							<h5 class="mb-4">Update Customer</h5>

							<form action="/customer/update-customer" method="post">

								<input type="hidden" name="id" value="${customer.id}" />

								<div class="col-md-12">
									<label class="form-label">Full Name</label> <input type="text"
										name="fullName" class="form-control"
										placeholder="Enter full name" value="${customer.fullName}">
								</div>

								<div class="col-md-12">
									<label class="form-label">Email</label> <input type="email"
										name="email" class="form-control" placeholder="Enter email"
										value="${customer.email}">
								</div>

								<div class="col-md-12">
									<label class="form-label">Phone</label> <input type="text"
										name="phone" class="form-control"
										placeholder="Enter phone number" value="${customer.phone}">
								</div>

								<div class="col-md-12">
									<label class="form-label">Address</label>
									<textarea name="address" rows="3" class="form-control"
										placeholder="Enter address">${customer.address}</textarea>
								</div>

								<div class="col-md-12">
									<label class="form-label">City</label> <input type="text"
										name="city" class="form-control" placeholder="Enter city"
										value="${customer.city}">
								</div>

								<div class="col-md-12">
									<label class="form-label">State</label> <select name="state"
										class="form-control">
										<option>Select State</option>
										<option>Maharashtra</option>
										<option>Gujarat</option>
										<option>Rajasthan</option>
										<option>Punjab</option>
										<option>Haryana</option>
										<option>Karnataka</option>
										<option>Kerala</option>
										<option>Tamil Nadu</option>
										<option>Uttar Pradesh</option>
										<option>Madhya Pradesh</option>
										<option>Bihar</option>
										<option>West Bengal</option>
										<option>Odisha</option>
										<option>Chhattisgarh</option>
										<option>Jharkhand</option>
										<option>Assam</option>
										<option>Telangana</option>
										<option>Andhra Pradesh</option>
										<option>Uttarakhand</option>
										<option>Himachal Pradesh</option>
										<option>Goa</option>
										<option>Tripura</option>
										<option>Manipur</option>
										<option>Meghalaya</option>
										<option>Arunachal Pradesh</option>
										<option>Mizoram</option>
										<option>Nagaland</option>
										<option>Sikkim</option>
										<option>Delhi</option>
									</select>
								</div>


								<div class="col-md-12">
									<label class="form-label">Country</label> <select
										name="country" class="form-control">
										<option>Select Country</option>
										<option>India</option>
										<option>United States</option>
										<option>Canada</option>
										<option>Australia</option>
										<option>United Kingdom</option>
										<option>Germany</option>
										<option>France</option>
										<option>Italy</option>
										<option>Japan</option>
										<option>China</option>
										<option>Brazil</option>
										<option>Russia</option>
										<option>South Africa</option>
										<option>New Zealand</option>
										<option>Mexico</option>
										<option>Netherlands</option>
										<option>Spain</option>
										<option>Switzerland</option>
										<option>Singapore</option>
										<option>UAE</option>
									</select>
								</div>

								<div class="col-md-12">
									<label class="form-label">Pincode</label> <input type="text"
										name="pincode" class="form-control"
										placeholder="Enter pincode" value="${customer.pincode}">
								</div>

								<div class="col-md-12">
									<label class="form-label">ID Proof</label> <input type="text"
										name="idProof" class="form-control"
										placeholder="Enter ID proof" value="${customer.idProof}">
								</div>

								<div class="col-md-12 mt-3">
									<div class="d-md-flex d-grid align-items-center gap-3">
										<button type="submit" class="btn btn-primary px-4">Update</button>
										<button type="reset" class="btn btn-light px-4">Reset</button>
									</div>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../common/footer.jsp" />
