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
					<th>ID</th>
					<th>AC Type</th>
					<th>Bed Count</th>
					<th>Description</th>
					<th>Price</th>
					<th>Status</th>
					<th>Action</th>
					<!-- ✅ New column added -->
				</tr>
			</thead>
			<tbody>
				<c:forEach var="room" items="${doubleRoomList}">
					<tr>
						<td>${room.id}</td>
						<td>${room.ac_type}</td>
						<td>${room.bed_count}</td>
						<td>${room.description}</td>
						<td>${room.price_per_night}</td>
						<td><c:choose>
								<c:when
									test="${fn:toUpperCase(fn:trim(room.status)) eq 'BOOKED'}">
									<span class="status-btn status-booked">${room.status}</span>
								</c:when>
								<c:otherwise>
									<span class="status-btn status-available">${room.status}</span>
								</c:otherwise>
							</c:choose></td>
						<td><c:choose>
								<c:when
									test="${fn:toUpperCase(fn:trim(room.status)) eq 'BOOKED'}">
									<button disabled class="booked-btn">Room is Booked</button>
								</c:when>
								<c:otherwise>
									<a
										href="bookNow?roomId=${room.id}"
										class="book-now-btn">Book Now</a>

								</c:otherwise>
							</c:choose></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

<jsp:include page="../common/footer.jsp" />
