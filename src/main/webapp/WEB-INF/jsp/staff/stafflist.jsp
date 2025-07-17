<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../common/header.jsp" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/assets/css/stafflist.css">

<div class="page-wrapper">
	<div class="page-content">
		<div id="home" class="chr-wrapper">
			<div class="main-contant">
				<!--Staff Section Start-->
				<section id="section-3">
					<div class="staff-table-container">
						<table class="staff-table">
							<thead>
								<tr>
									<th>Full Name</th>
									<th>Email</th>
									<th>Phone</th>
									<th>Gender</th>
									<th>Address</th>
									<th>Joining Date</th>
									<th>Department</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="staff" items="${staffList}">
									<tr>
										<td>${staff.fullName}</td>
										<td>${staff.email}</td>
										<td>${staff.phoneNumber}</td>
										<td>${staff.gender}</td>
										<td>${staff.address}</td>
										<td>${staff.joiningDate}</td>
										<td>${staff.department}</td>
										<td>
											<!-- Edit Icon --> 
											<a href="/staff/editStaff/${staff.id}"> <i class="fas fa-edit text-primary"
												style="font-size: 18px;"></i>
												
												
										</a> <!-- Delete Icon --> <a
											href="/staff/deleteStaffById/${staff.id}"> <i class="fas fa-trash-alt text-danger"
												style="font-size: 18px;"></i>
										</a>


										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</section>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../common/footer.jsp" />
