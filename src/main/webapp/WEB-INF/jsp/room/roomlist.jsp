<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../adminCommon/header.jsp"/>


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/assets/css/roomlist.css"> 



<div class="page-wrapper">
	<div class="page-content">

<div class="room-card-container">
	<c:forEach var="room" items="${roomlist}">
		<div class="room-card">

			<img src="<c:url value='/resource/assets/images/${room.room_image_path}' />"
				alt="Room Image" />

			<div class="room-details">
				<h4>${room.room_types}</h4>
				<p>
					<strong>Room Number:</strong> ${room.room_number}
				</p>
				<p>
					<strong>Bed Count:</strong> ${room.bed_count}
				</p>
				<p>
					<strong>Price/Night:</strong> ${room.price_per_night}
				</p>
				<p>
					<strong>AC Type:</strong> ${room.ac_type}
				</p>
				<p>
					<strong>Description:</strong> ${room.description}
				</p>

				<a href="editRoom/${room.id}" class="edit-button">Edit</a> <a
					href="delete/${room.id}" class="delete-button">Delete</a>
			</div>
		</div>
	</c:forEach>
</div>
</div>
</div>



<jsp:include page="../adminCommon/footer.jsp"></jsp:include>


