<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Room List</title>
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

    .room-card-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
        gap: 30px;
        padding: 20px;
    }

    .room-card {
        width: 500px;
        border: 1px solid #ccc;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        background-color: #fff;
        transition: transform 0.3s ease;
        text-align: center;
    }

    .room-card:hover {
        transform: scale(1.02);
    }

    .room-card img {
        width: 100%;
        height: 300px;
        object-fit: cover;
    }

    .room-details {
        padding: 15px;
    }

    .room-details h4 {
        margin: 0 0 10px;
        background-color: #007bff;
        color: white;
        padding: 10px;
        border-radius: 6px;
        font-size: 20px;
    }

    .room-details p {
        margin: 8px 0;
        font-size: 16px;
    }

    .edit-button {
        display: inline-block;
        margin-top: 12px;
        padding: 8px 20px;
        background-color: #3498db;
        color: white;
        text-decoration: none;
        border-radius: 6px;
        font-size: 15px;
        transition: background-color 0.3s ease;
    }

    .edit-button:hover {
        background-color: #2980b9;
    }
</style>
</head>
<body>
    <h2>All Rooms</h2>

    <div class="room-card-container">
        <c:forEach var="room" items="${rooms}">
            <div class="room-card">

                <img src="<c:url value='/assets/images/${room.room_image_path}' />" alt="Room Image" />

                <div class="room-details">
                    <h4>${room.room_types}</h4>
                    <p><strong>Room Number:</strong> ${room.room_number}</p>
                    <p><strong>Bed Count:</strong> ${room.bed_count}</p>
                    <p><strong>Price/Night:</strong> ${room.price_per_night}</p>
                    <p><strong>AC Type:</strong> ${room.ac_type}</p>
                    <p><strong>Description:</strong> ${room.description}</p>

                    <a href="editRoom/${room.id}" class="edit-button">Edit</a>
                    <a href="delete/${room.id}" class="delete-button">Delete</a>
                </div>
            </div>
        </c:forEach>
    </div>
</body>
</html>
