<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="../common/header.jsp" />

<link rel="stylesheet" type="text/css"
    href="${pageContext.request.contextPath}/resource/assets/css/doubleRoom.css">

<div class="page-wrapper">
    <div class="page-content">
        <h2>Checkout Details</h2>
        <table>
            <thead>
                <tr>
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
                <c:if test="${not empty checkOut}">
                    <tr>
                        <td>${checkOut.customerName}</td>
                        <td>${checkOut.roomType}</td>
                        <td>${checkOut.bookingDate}</td>
                        <td>${checkOut.checkoutDate}</td>
                        <td>${checkOut.daysStayed}</td>
                        <td>${checkOut.pricePerDay}</td>
                        <td>${checkOut.totalAmount}</td>
                        <td>
                            <!-- Form to submit all checkout data -->
                            <form action="${pageContext.request.contextPath}/checkout/saveCheckout" method="post">
                                <input type="hidden" name="customerName" value="${checkOut.customerName}" />
                                <input type="hidden" name="roomType" value="${checkOut.roomType}" />
                                <input type="hidden" name="bookingDate" value="${checkOut.bookingDate}" />
                                <input type="hidden" name="checkoutDate" value="${checkOut.checkoutDate}" />
                                <input type="hidden" name="daysStayed" value="${checkOut.daysStayed}" />
                                <input type="hidden" name="pricePerDay" value="${checkOut.pricePerDay}" />
                                <input type="hidden" name="totalAmount" value="${checkOut.totalAmount}" />
                                <button type="submit" class="book-now-btn">Confirm Check Out</button>
                            </form>
                        </td>
                    </tr>
                </c:if>
            </tbody>
        </table>
    </div>
</div>

<jsp:include page="../common/footer.jsp" />
