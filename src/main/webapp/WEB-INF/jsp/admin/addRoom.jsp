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


<!--Rooms Section Start-->
		<section id="section-5">
			<div class="headind-1 text-center">
				<h3 class="title">Add Rooms</h3>
			</div>
			<div class="container">

				<div class="row">
					<div class="form-container">


						<form action="addRooms" method="post">

							<div class="form-group">
								<label for="room_number">Room Number</label> <input
									type="number" name="room_number" id="room_number"
									placeholder="Room Number">
							</div>

							<div class="form-group">
								<label for="room_types">Room Type</label> <select
									name="room_types" id="room_types">
									<option>Select Room</option>
									<option>Single Room</option>
									<option>Double Room</option>
								</select>
							</div>

							<div class="form-group">
								<label for="bed_count ">Bed Count</label> <input type="number"
									name="bed_count" id="bed_count " placeholder="2">
							</div>

							<div class="form-group">
								<label for="price_per_night">Price Per Night</label> <input
									type="text" id="price_per_night" name="price_per_night"
									placeholder="0.0000">
							</div>

							<div class="form-group">
								<label>AC / Non-AC:</label><br> <input type="radio"
									name="ac_type" value="AC"> AC <input type="radio"
									name="ac_type" value="Non-AC"> Non-AC
							</div>



							<div class="form-group">
								<label>Description:</label>
								<textarea name="description" rows="4" cols="30"></textarea>
							</div>

							<div class="form-group">
								<label>Room Image:</label> <input type="file"
									name="room_image_path">
							</div>

							<div class="form-group text-center">
								<input type="submit" value="Add Room">
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
		</div>


		<!-- Rooms Lists Section Start -->

</body>
</html>