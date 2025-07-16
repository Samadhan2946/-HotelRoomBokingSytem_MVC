<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

	
<jsp:include page="../adminCommon/header.jsp" />

<div class="wrapper">
	<div class="page-wrapper">
		<div class="page-content">
			<div class="row">
				<div class="col-xl-6 mx-auto">
					<div class="card">
						<div class="card-body p-4">
							<h5 class="mb-4">Add Staff</h5>
							<form class="row g-3" action="addstaff" method="post">
							
								<div class="col-md-12">
									<label for="fullName" class="form-label">Full Name</label>
									<div class="position-relative input-icon">
										<input type="text" name="fullName" class="form-control"
											id="fullName" placeholder="Full Name">
										<span class="position-absolute top-50 translate-middle-y"></span>
									</div>
								</div>

								<div class="col-md-12">
									<label for="email" class="form-label">Email</label>
									<div class="position-relative input-icon">
										<input type="email" name="email" class="form-control"
											id="email" placeholder="Email">
										<span class="position-absolute top-50 translate-middle-y"></span>
									</div>
								</div>

								<div class="col-md-12">
									<label for="phoneNumber" class="form-label">Phone Number</label>
									<div class="position-relative input-icon">
										<input type="text" name="phoneNumber" class="form-control"
											id="phoneNumber" placeholder="Phone Number">
										<span class="position-absolute top-50 translate-middle-y"></span>
									</div>
								</div>

								<div class="col-md-12">
									<label for="gender" class="form-label">Gender</label>
									<div class="position-relative input-icon">
										<input type="radio" name="gender" value="Male"> Male
										<input type="radio" name="gender" value="Female"> Female
										<span class="position-absolute top-50 translate-middle-y"></span>
									</div>
								</div>

								<!-- Optional: Date of Birth field
								<div class="col-md-12">
									<label for="dateOfBirth" class="form-label">Date of Birth</label>
									<div class="position-relative input-icon">
										<input type="date" name="dateOfBirth" class="form-control"
											id="dateOfBirth">
										<span class="position-absolute top-50 translate-middle-y"><i class='bx bx-calendar'></i></span>
									</div>
								</div>
								-->

								<div class="col-md-12">
									<label for="address" class="form-label">Address</label>
									<div class="position-relative input-icon">
										<textarea name="address" class="form-control" rows="4" placeholder="Address"></textarea>
										<span class="position-absolute top-50 translate-middle-y"></span>
									</div>
								</div>

								<div class="col-md-12">
									<label for="joiningDate" class="form-label">Joining Date</label>
									<div class="position-relative input-icon">
										<input type="date" name="joiningDate" class="form-control"
											id="joiningDate">
										<span class="position-absolute top-50 translate-middle-y"></span>
									</div>
								</div>

								<div class="col-md-12">
									<label for="department" class="form-label">Department</label>
									<select name="department" id="department" class="form-select">
										<option>Select Department</option>
										<option>Manager</option>
										<option>Cleaner</option>
										<option>Receptionist</option>
									</select>
								</div>

								<div class="col-md-12">
									<div class="d-md-flex d-grid align-items-center gap-3">
										<button type="submit" class="btn btn-primary px-4">Submit</button>
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


<jsp:include page="../adminCommon/footer.jsp" />
