<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="../common/header.jsp" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/assets/css/doubleRoom.css">

<div class="page-wrapper">
	<div class="page-content">
		<h2>Double Room List</h2>
		<table>
			<thead>
				<tr>
					<th>Booking ID</th>
					<th>Full Name</th>
					<th>Room ID</th>
					<th>Bed Count</th>
					<th>Price per Night</th>
					<th>Status</th>
					<th>Booking Date</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="booking" items="${bookingList}">
					<c:if test="${booking.status eq 'BOOKED'}">
						<tr>
							<td>${booking.id}</td>
							<td>${booking.fullName}</td>
							<td>${booking.roomId}</td>
							<td>${booking.bedCount}</td>
							<td>${booking.pricePerNight}</td>
							<td>${booking.status}</td>
							<td>${booking.booking_date}</td>
							<td>
								<a href="${pageContext.request.contextPath}/checkout?id=${booking.id}" class="book-now-btn">Check Out</a>
							</td>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

<jsp:include page="../common/footer.jsp" />
