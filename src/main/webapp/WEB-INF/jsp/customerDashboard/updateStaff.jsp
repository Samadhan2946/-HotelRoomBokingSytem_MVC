
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Staff</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f7f8;
	margin: 0;
	padding: 0;
}

.container {
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 40px 0;
}

.form-container {
	width: 500px;
	background: white;
	padding: 30px 40px;
	border-radius: 10px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

h3.title {
	text-align: center;
	margin-bottom: 30px;
}

.form-group {
	margin-bottom: 20px;
}

label {
	display: block;
	font-weight: bold;
	margin-bottom: 6px;
}

input[type="text"], input[type="number"], input[type="file"], select,
	textarea {
	width: 100%;
	padding: 10px;
	border-radius: 6px;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

input[type="radio"] {
	margin-right: 10px;
}

.form-group.text-center {
	text-align: center;
}

.form-group.text-center input[type="submit"] {
	padding: 10px 30px;
	background-color: #3498db;
	color: white;
	border: none;
	border-radius: 6px;
	cursor: pointer;
	font-size: 16px;
}

.form-group.text-center input[type="submit"]:hover {
	background-color: #2980b9;
}
</style>
</head>
<body>

<div id="home" class="chr-wrapper">
	<jsp:include page="../admin/header.jsp"></jsp:include>
	

				<!-- Form Section -->
				<section id="section-5">
					<div class="container">
						<div class="form-container">
							<h3 class="title">Update Staff</h3>
							<form action="/update-staff" method="post" class="staff-form">

								<input type="hidden" name="id" value="${staff.id}" /> <label>Full
									Name:</label> <input type="text" name="fullName"
									value="${staff.fullName}" required> <label>Email:</label>
								<input type="email" name="email" value="${staff.email}" required>

								<label>Phone Number:</label> <input type="text"
									name="phoneNumber" value="${staff.phoneNumber}" required>

								<label>Gender:</label> <input type="radio" name="gender"
									value="Male" ${staff.gender == 'Male' ? 'checked' : ''}>
								Male <input type="radio" name="gender" value="Female"
									${staff.gender == 'Female' ? 'checked' : ''}> Female <input
									type="radio" name="gender" value="Other"
									${staff.gender == 'Other' ? 'checked' : ''}> Other <label>Address:</label>
								<textarea name="address" rows="3" cols="30" required>${staff.address}</textarea>

								<label>Joining Date:</label> <input type="date"
									name="joiningDate" value="${staff.joiningDate}" required>

								<label>Department:</label> <select name="department" required>
									<option value="">-- Select Department --</option>
									<option value="Manager"
										${staff.department == 'Manager' ? 'selected' : ''}>Manager</option>
									<option value="Cleaner"
										${staff.department == 'Cleaner' ? 'selected' : ''}>Cleaner</option>
									<option value="Receptionist"
										${staff.department == 'Receptionist' ? 'selected' : ''}>Receptionist</option>
								</select>

								<div class="form-group text-center">
									<input type="submit" value="Update Staff" />
								</div>
							</form>
						</div>
					</div>
				</section>
			</div>
		 


</body>
</html>
