<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../common/header.jsp" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/assets/css/customerList.css">

<div class="page-wrapper">
	<div class="page-content">
		<div id="home" class="chr-wrapper">
			<div class="main-contant">
				<!--Customer Section Start-->
				<section id="section-3">
					<div class="customer-table-container">
						<table class="customer-table">
							<thead>
								<tr>
									<th>Full Name</th>
									<th>Email</th>
									<th>Phone</th>
									<th>Address</th>
									<th>City</th>
									<th>State</th>
									<th>Country</th>
									<th>Pincode</th>
									<th>ID Proof</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="customer" items="${customerList}">
									<tr>
										<td>${customer.fullName}</td>
										<td>${customer.email}</td>
										<td>${customer.phone}</td>
										<td>${customer.address}</td>
										<td>${customer.city}</td>
										<td>${customer.state}</td>
										<td>${customer.country}</td>
										<td>${customer.pincode}</td>
										<td>${customer.idProof}</td>
										<td>
											<!-- Edit Icon --> 
											<a href="/customer/editCustomer/${customer.id}"> 
												<i class="fas fa-edit text-primary" style="font-size: 18px;"></i>
											</a> 
											<!-- Delete Icon --> 
											<a href="/customer/delete/${customer.id}"> 
												<i class="fas fa-trash-alt text-danger" style="font-size: 18px;"></i>
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
