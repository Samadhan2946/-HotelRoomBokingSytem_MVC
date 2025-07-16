 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f7f8;
	margin: 0;
	padding: 0;
}

h2 {
	text-align: center;
	margin-top: 20px;
	color: #2c3e50;
}

.staff-card-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
	gap: 30px;
	padding: 20px;
}

.staff-card {
	width: 500px;
	border: 1px solid #ccc;
	border-radius: 10px;
	overflow: hidden;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	background-color: #fff;
	transition: transform 0.3s ease;
	text-align: center;
}

.staff-card:hover {
	transform: scale(1.02);
}

.staff-details {
	padding: 15px;
}

.staff-details h4 {
	margin: 0 0 10px;
	background-color: #007bff;
	color: white;
	padding: 10px;
	border-radius: 6px;
	font-size: 20px;
}

.staff-details p {
	margin: 8px 0;
	font-size: 16px;
}
</style>
</head>
<body>

	<div id="home" class="chr-wrapper">
		<jsp:include page="../admin/header.jsp"/>


		<div class="main-contant">
			<!--Staff Section Start-->
			<section id="section-3">
				<div class="headind-1 text-center">
					<h3 class="title">All Staffs</h3>
				</div>

				<div class="staff-card-container">
					<c:forEach var="staff" items="${staffList}">
						<div class="staff-card">
							<div class="staff-details">
								<h4>${staff.fullName}</h4>
								<p>
									<strong>Email:</strong> ${staff.email}
								</p>
								<p>
									<strong>Phone:</strong> ${staff.phoneNumber}
								</p>
								<p>
									<strong>Gender:</strong> ${staff.gender}
								</p>

								<p>
									<strong>Address:</strong> ${staff.address}
								</p>
								<p>
									<strong>Joining Date:</strong> ${staff.joiningDate}
									pattern="dd-MM-yyyy"
								</p>
								<p>
									<strong>Department:</strong> ${staff.department}
								</p>

								<a href="editStaff/${staff.id}" class="edit-button">Edit</a> <a
									href="deleteStaffById/${staff.id}" class="delete-button">Delete</a>
							</div>
						</div>
					</c:forEach>
				</div>
				</section>
				</div>
				</div>
				
				<jsp:include page="../common/footer.jsp"/>
	
