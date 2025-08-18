<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="../common/header.jsp" />

<link rel="stylesheet" type="text/css"
    href="${pageContext.request.contextPath}/resource/assets/css/doubleRoom.css">
 
<div class="page-wrapper">
    <div class="page-content">
        <h2>Checkout List (Receipt)</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Customer Name</th>
                    <th>Room Type</th>
                    <th>Booking Date</th>
                    <th>Checkout Date</th>
                    <th>Days Stayed</th>
                    <th>Price Per Day</th>
                    <th>Total Amount</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="receipt" items="${checkoutList}">
                    <tr>
                        <td>${receipt.id}</td>
                        <td>${receipt.customerName}</td>
                        <td>${receipt.roomType}</td>
                        <td>${receipt.bookingDate}</td>
                        <td>${receipt.checkoutDate}</td>
                        <td>${receipt.daysStayed}</td>
                        <td>${receipt.pricePerDay}</td>
                        <td>${receipt.totalAmount}</td>
                        <td>
                            <form action="${pageContext.request.contextPath}/receipt/generateReceipt" method="post">
                                <input type="hidden" name="id" value="${receipt.id}">
                                <input type="hidden" name="customerName" value="${receipt.customerName}">
                                <input type="hidden" name="roomType" value="${receipt.roomType}">
                                <input type="hidden" name="bookingDate" value="${receipt.bookingDate}">
                                <input type="hidden" name="checkoutDate" value="${receipt.checkoutDate}">
                                <input type="hidden" name="daysStayed" value="${receipt.daysStayed}">
                                <input type="hidden" name="pricePerDay" value="${receipt.pricePerDay}">
                                <input type="hidden" name="totalAmount" value="${receipt.totalAmount}">

                                <label>
                                    <input type="radio" name="paymentMode" value="CASH" required> Cash
                                </label>
                                <label>
                                    <input type="radio" name="paymentMode" value="ONLINE" required> Online
                                </label>
                                <br>
                                <button type="submit" class="book-now-btn">Pay & Generate Receipt</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<jsp:include page="../common/footer.jsp" />
