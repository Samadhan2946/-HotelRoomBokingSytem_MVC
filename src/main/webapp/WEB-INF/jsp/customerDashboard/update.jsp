<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Room</title>
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
		<jsp:include page="../admin/header.jsp"/>
		
					<div class="headind-1 text-center">
						<h3 class="title">Update Room</h3>
					</div>

					<!-- Form Section -->
					<section id="section-5">
						<div class="container">
							<div class="form-container">
								<h3 class="title">Update Room</h3>
								<form action="/updateRoom" method="post"
									enctype="multipart/form-data">
									<input type="hidden" name="id" value="${room.id}" />

									<div class="form-group">
										<label for="room_number">Room Number</label> <input
											type="number" name="room_number" value="${room.room_number}"
											id="room_number" placeholder="Room Number">
									</div>

									<div class="form-group">
										<label for="room_types">Room Type</label> <select
											name="room_types" id="room_types">
											<option value="">Select Room</option>
											<option value="Single Room"
												<c:if test="${room.room_types eq 'Single Room'}">selected</c:if>>Single
												Room</option>
											<option value="Double Room"
												<c:if test="${room.room_types eq 'Double Room'}">selected</c:if>>Double
												Room</option>
										</select>
									</div>

									<div class="form-group">
										<label for="bed_count">Bed Count</label> <input type="number"
											name="bed_count" value="${room.bed_count}" id="bed_count"
											placeholder="2">
									</div>

									<div class="form-group">
										<label for="price_per_night">Price Per Night</label> <input
											type="text" id="price_per_night" name="price_per_night"
											value="${room.price_per_night}" placeholder="0.0000">
									</div>

									<div class="form-group">
										<label>AC / Non-AC:</label><br> <input type="radio"
											name="ac_type" value="AC"
											<c:if test="${room.ac_type eq 'AC'}">checked</c:if>>
										AC <input type="radio" name="ac_type" value="Non-AC"
											<c:if test="${room.ac_type eq 'Non-AC'}">checked</c:if>>
										Non-AC
									</div>

									<div class="form-group">
										<label>Status:</label><br> <input type="radio"
											name="status" value="available"
											<c:if test="${room.status eq 'available'}">checked</c:if>>
										Available <input type="radio" name="status" value="Booked"
											<c:if test="${room.status eq 'Booked'}">checked</c:if>>
										Booked
									</div>

									<div class="form-group">
										<label>Description:</label>
										<textarea name="description" rows="4" cols="30">${room.description}</textarea>
									</div>

									<div class="form-group">
										<label>Room Image:</label> <input type="file"
											name="room_image_path" value="${room.room_image_path}">
									</div>

									<div class="form-group text-center">
										<input type="submit" value="Update Room">
									</div>
								</form>
							</div>
						</div>
					</section>
					<jsp:include page="../common/footer.jsp"/>
		
