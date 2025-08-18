<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../common/header.jsp" />

<style>
.receipt-box {
	max-width: 600px;
	margin: 20px auto;
	padding: 20px;
	border: 2px solid #333;
	border-radius: 12px;
	font-family: Arial, sans-serif;
	background: #f9f9f9;
	box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
}

.receipt-box h2 {
	text-align: center;
	margin-bottom: 15px;
	color: #2c3e50;
}

.receipt-field {
	display: flex;
	justify-content: space-between;
	padding: 6px 0;
	border-bottom: 1px dashed #aaa;
}

.receipt-footer {
	margin-top: 20px;
	text-align: center;
	font-weight: bold;
}

.download-btn {
	background: #3498db;
	color: white;
	padding: 8px 14px;
	border: none;
	border-radius: 6px;
	cursor: pointer;
	margin-top: 15px;
}

.download-btn:hover {
	background: #217dbb;
}
</style>

<div class="page-wrapper">
	<div class="page-content">
		<h2>Checkout Receipt</h2>

		<div class="receipt-box" id="receipt-${receipt.checkOutId}">
			<h2>Hotel Receipt</h2>
			<div class="receipt-field">
				<span>ID:</span><span>${receipt.checkOutId}</span>
			</div>
			<div class="receipt-field">
				<span>Customer:</span><span>${receipt.customerName}</span>
			</div>
			<div class="receipt-field">
				<span>Room Type:</span><span>${receipt.roomType}</span>
			</div>
			<div class="receipt-field">
				<span>Booking Date:</span><span>${receipt.bookingDate}</span>
			</div>
			<div class="receipt-field">
				<span>Checkout Date:</span><span>${receipt.checkoutDate}</span>
			</div>
			<div class="receipt-field">
				<span>Days Stayed:</span><span>${receipt.daysStayed}</span>
			</div>
			<div class="receipt-field">
				<span>Price/Day:</span><span>₹${receipt.pricePerDay}</span>
			</div>
			<div class="receipt-field">
				<span>Total:</span><span>₹${receipt.totalAmount}</span>
			</div>



			<div style="text-align: center;">
				<button class="download-btn"
					onclick="downloadReceipt(${receipt.checkOutId})">Download
					Receipt</button>
			</div>
		</div>
	</div>
</div>

<script>
function downloadReceipt(checkOutId) {
  let element = document.getElementById("receipt-" + checkOutId);
  let opt = {
    margin: 0.5,
    filename: "receipt-" + checkOutId + ".pdf",
    image: { type: 'jpeg', quality: 0.98 },
    html2canvas: { scale: 2 },
    jsPDF: { unit: 'in', format: 'letter', orientation: 'portrait' }
  };
  html2pdf().from(element).set(opt).save();
}
</script>

<!-- Import html2pdf.js library -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>

<jsp:include page="../common/footer.jsp" />
