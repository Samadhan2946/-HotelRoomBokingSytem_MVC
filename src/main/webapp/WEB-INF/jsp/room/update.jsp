<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../adminCommon/header.jsp" />

<!--wrapper-->
<div class="wrapper">
	<!--start page wrapper -->
	<div class="page-wrapper">
		<div class="page-content">
			<div class="row">
				<div class="col-xl-6 mx-auto">
					<div class="card">
						<div class="card-body p-4">
							<h5 class="mb-4">Update Room</h5>


							<form action="<c:url value='/room/update-room'/>" method="post" >

								
								<input type="hidden" name="id" value="${room.id}" />

								<div class="col-md-12">
									<label for="room_number" class="form-label">Room Number</label>
									<div class="position-relative input-icon">
										<input type="text" name="room_number" class="form-control"
											id="room_number" value="${room.room_number}"
											placeholder="Room Number"> <span
											class="position-absolute top-50 translate-middle-y"></span>
									</div>
								</div>

								<div class="col-md-12">
									<label for="room_types" class="form-label">Room Type</label> <select
										name="room_types" id="room_types" class="form-select">
										<option value="">Select Room</option>
										<option value="Single Room"
											<c:if test="${room.room_types eq 'Single Room'}">selected</c:if>>Single
											Room</option>
										<option value="Double Room"
											<c:if test="${room.room_types eq 'Double Room'}">selected</c:if>>Double
											Room</option>
									</select>
								</div>

								<div class="col-md-12">
									<label for="bed_count" class="form-label">Bed Count</label>
									<div class="position-relative input-icon">
										<input type="text" name="bed_count" class="form-control"
											id="bed_count" value="${room.bed_count}"
											placeholder="Bed Count"> <span
											class="position-absolute top-50 translate-middle-y"></span>
									</div>
								</div>

								<div class="col-md-12">
									<label for="price_per_night" class="form-label">Price
										Per Night</label>
									<div class="position-relative input-icon">
										<input type="text" name="price_per_night" class="form-control"
											id="price_per_night" value="${room.price_per_night}"
											placeholder="Price"> <span
											class="position-absolute top-50 translate-middle-y"></span>
									</div>
								</div>

								<div class="col-md-12">
									<label for="input17" class="form-label">AC / Non-AC:</label>
									<div class="position-relative input-icon">
										<input type="radio" name="ac_type" value="AC"
											<c:if test="${room.ac_type eq 'AC'}">checked</c:if>>
										AC <input type="radio" name="ac_type" value="Non-AC"
											<c:if test="${room.ac_type eq 'Non-AC'}">checked</c:if>>
										Non-AC <span
											class="position-absolute top-50 translate-middle-y"></span>
									</div>
								</div>

								<div class="col-md-12">
									<label for="input18" class="form-label">Status</label>
									<div class="position-relative input-icon">
										<input type="radio" name="status" value="available"
											<c:if test="${room.status eq 'available'}">checked</c:if>>
										Available <input type="radio" name="status" value="Booked"
											<c:if test="${room.status eq 'Booked'}">checked</c:if>>
										Booked <span
											class="position-absolute top-50 translate-middle-y"></span>
									</div>
								</div>

								<div class="col-md-12">
									<label for="input18" class="form-label">Description</label>
									<div class="position-relative input-icon">
										<textarea name="description" rows="4" cols="30">${room.description}</textarea>
										<span class="position-absolute top-50 translate-middle-y"></span>
									</div>
								</div>

								<div class="col-md-4">
									<label for="input20" class="form-label">Room Image:</label>
									<div class="position-relative input-icon">
										<input type="file" name="room_image_path"
											value="${room.room_image_path}"> <span
											class="position-absolute top-50 translate-middle-y"></span>
									</div>
								</div>

								<div class="col-md-12">
									<div class="d-md-flex d-grid align-items-center gap-3">
										<button type="submit" class="btn btn-primary px-4">Submit</button>
										<button type="button" class="btn btn-light px-4">Reset</button>
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
