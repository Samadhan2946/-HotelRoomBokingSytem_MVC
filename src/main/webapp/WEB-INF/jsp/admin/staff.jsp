<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="home" class="chr-wrapper">
		<jsp:include page="../admin/header.jsp"></jsp:include>
<div class="main-contant">
			<!--Staff Section Start-->
			<section id="section-3">
				<div class="staff-form-wrapper">
					<div class="headind-1 text-center">
						<h3 class="title">Our Special Staff</h3>
					</div>

					<form action="/add-staff" method="post" class="staff-form">

						<label>Full Name:</label> <input type="text" name="fullName"
							required> <label>Email:</label> <input type="email"
							name="email" required> <label>Phone Number:</label> <input
							type="text" name="phoneNumber" required> <label>Gender:</label>
						<input type="radio" name="gender" value="Male"> Male <input
							type="radio" name="gender" value="Female"> Female <input
							type="radio" name="gender" value="Other"> Other <label>Address:</label>
						<textarea name="address" rows="3" cols="30" required></textarea>

						<label>Joining Date:</label> <input type="date" name="joiningDate"
							required> <label>Department:</label> <select
							name="department" required>
							<option value="">-- Select Department --</option>
							<option value="Manager">Manager</option>
							<option value="Cleaner">Cleaner</option>
							<option value="Receptionist">Receptionist</option>
						</select>

						<button type="submit">Add Staff</button>
					</form>


				</div>
			</section>
		</div>
		<jsp:include page="../common/footer.jsp"></jsp:include>
</div>
		<!--Staff Section End-->

</body>
</html>