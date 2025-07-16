<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../adminCommon/header.jsp" />

<div class="wrapper">
	<div class="page-wrapper">
		<div class="page-content">
			<div class="row">
				<div class="col-xl-6 mx-auto">
					<div class="card">
						<div class="card-body p-4">
							<h5 class="mb-4">Update Staff</h5>

							<!-- Updated form action using c:url -->
							<form action="<c:url value='/staff/update-staff'/>" method="post">

								<input type="hidden" name="id" value="${staff.id}" />

								<div class="col-md-12">
									<label for="fullName" class="form-label">Full Name</label>
									<div class="position-relative input-icon">
										<input type="text" name="fullName" class="form-control" id="fullName"
											placeholder="Full Name" value="${staff.fullName}">
										<span class="position-absolute top-50 translate-middle-y"></span>
									</div>
								</div>

								<div class="col-md-12">
									<label for="email" class="form-label">Email</label>
									<div class="position-relative input-icon">
										<input type="email" name="email" class="form-control" id="email"
											placeholder="Email" value="${staff.email}">
										<span class="position-absolute top-50 translate-middle-y"></span>
									</div>
								</div>

								<div class="col-md-12">
									<label for="phoneNumber" class="form-label">Phone Number</label>
									<div class="position-relative input-icon">
										<input type="text" name="phoneNumber" class="form-control" id="phoneNumber"
											placeholder="Phone Number" value="${staff.phoneNumber}">
										<span class="position-absolute top-50 translate-middle-y"></span>
									</div>
								</div>

								<div class="col-md-12">
									<label for="gender" class="form-label">Gender</label>
									<div class="position-relative input-icon">
										<input type="radio" name="gender" value="Male" ${staff.gender == 'Male' ? 'checked' : ''}> Male
										<input type="radio" name="gender" value="Female" ${staff.gender == 'Female' ? 'checked' : ''}> Female
										<input type="radio" name="gender" value="Other" ${staff.gender == 'Other' ? 'checked' : ''}> Other
										<span class="position-absolute top-50 translate-middle-y"></span>
									</div>
								</div>

								<div class="col-md-12">
									<label for="address" class="form-label">Address</label>
									<div class="position-relative input-icon">
										<textarea name="address" class="form-control" rows="4"
											placeholder="Address">${staff.address}</textarea>
										<span class="position-absolute top-50 translate-middle-y"></span>
									</div>
								</div>

								<div class="col-md-12">
									<label for="joiningDate" class="form-label">Joining Date</label>
									<div class="position-relative input-icon">
										<input type="date" name="joiningDate" class="form-control" id="joiningDate"
											value="${staff.joiningDate}">
										<span class="position-absolute top-50 translate-middle-y"></span>
									</div>
								</div>

								<div class="col-md-12">
									<label for="department" class="form-label">Department</label>
									<select name="department" id="department" class="form-select">
										<option value="">Select Department</option>
										<option value="Manager" ${staff.department == 'Manager' ? 'selected' : ''}>Manager</option>
										<option value="Cleaner" ${staff.department == 'Cleaner' ? 'selected' : ''}>Cleaner</option>
										<option value="Receptionist" ${staff.department == 'Receptionist' ? 'selected' : ''}>Receptionist</option>
									</select>
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

<jsp:include page="../adminCommon/footer.jsp" />
