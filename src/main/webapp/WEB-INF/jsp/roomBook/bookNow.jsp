<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../common/header.jsp" />

<!-- Start page wrapper -->
<div class="page-wrapper">
    <div class="page-content">
        <div class="row">
            <div class="col-xl-6 mx-auto">
                <div class="card">
                    <div class="card-body p-4">
                        <h5 class="mb-4">Customer Booking Form</h5>

                        <form class="row g-3" action="confirmBooking" method="post">

                            <!-- ✅ Get roomId from URL parameter -->
                            <input type="hidden" name="id" value="${param.roomId}" />

                            <div class="col-md-12">
                                <label for="customerId" class="form-label">Customer Name</label>
                                <select name="customerId" id="customerId" class="form-select" required>
                                    <option value="">-- Select Customer --</option>
                                    <c:forEach var="cust" items="${customer}">
                                        <option value="${cust.id}">${cust.fullName}</option>
                                    </c:forEach>
                                </select>	
                            </div>

                            <div class="col-md-12">
                                <label for="bookingDate" class="form-label">Booking Date</label>
                                <input type="text" id="bookingDate" name="bookingDate" class="form-control" readonly
                                       value="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>">
                            </div>

                            <div class="col-md-12">
                                <div class="d-md-flex d-grid align-items-center gap-3">
                                    <button type="submit" class="btn btn-primary px-4">Confirm Booking</button>
                                    <button type="reset" class="btn btn-light px-4">Reset</button>
                                </div>
                            </div>

                        </form>
                    </div> <!-- card-body -->
                </div> <!-- card -->
            </div> <!-- col -->
        </div> <!-- row -->
    </div> <!-- page-content -->
</div> <!-- page-wrapper -->

<jsp:include page="../common/footer.jsp" />
