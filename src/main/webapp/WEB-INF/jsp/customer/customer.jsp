<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="../common/header.jsp"/>

<div class="page-wrapper">
    <div class="page-content">
        <div class="row">
            <div class="col-xl-6 mx-auto">
                <div class="card">
                    <div class="card-body p-4">
                        <h5 class="mb-4">Add Customer</h5>
                        <form class="row g-3" action="addCustomer" method="post">

                            <!-- Full Name -->
                            <div class="col-md-12">
                                <label for="fullName" class="form-label">Full Name</label>
                                <div class="position-relative input-icon">
                                    <input type="text" name="fullName" class="form-control" id="fullName" placeholder="Full Name">
                                </div>
                            </div>

                            <!-- Email -->
                            <div class="col-md-12">
                                <label for="email" class="form-label">Email</label>
                                <div class="position-relative input-icon">
                                    <input type="email" name="email" class="form-control" id="email" placeholder="Email">
                                </div>
                            </div>

                            <!-- Phone -->
                            <div class="col-md-12">
                                <label for="phone" class="form-label">Phone</label>
                                <div class="position-relative input-icon">
                                    <input type="text" name="phone" class="form-control" id="phone" placeholder="Phone">
                                </div>
                            </div>

                            <!-- Address -->
                            <div class="col-md-12">
                                <label for="address" class="form-label">Address</label>
                                <div class="position-relative input-icon">
                                    <textarea name="address" rows="3" cols="30" class="form-control" id="address" placeholder="Address"></textarea>
                                </div>
                            </div>

                            <!-- City -->
                            <div class="col-md-12">
                                <label for="city" class="form-label">City</label>
                                <div class="position-relative input-icon">
                                    <input type="text" name="city" class="form-control" id="city" placeholder="City">
                                </div>
                            </div>

                            <!-- State Dropdown -->
                            <div class="col-md-12">
                                <label for="state" class="form-label">State</label>
                                <div class="position-relative input-icon">
                                    <select name="state" id="state" class="form-select">
                                        <option>Select State</option>
                                        <option>Maharashtra</option>
                                        <option>Gujarat</option>
                                        <option>Rajasthan</option>
                                        <option>Punjab</option>
                                        <option>Haryana</option>
                                        <option>Karnataka</option>
                                        <option>Kerala</option>
                                        <option>Tamil Nadu</option>
                                        <option>Uttar Pradesh</option>
                                        <option>Madhya Pradesh</option>
                                        <option>Bihar</option>
                                        <option>West Bengal</option>
                                        <option>Odisha</option>
                                        <option>Chhattisgarh</option>
                                        <option>Jharkhand</option>
                                        <option>Assam</option>
                                        <option>Telangana</option>
                                        <option>Andhra Pradesh</option>
                                        <option>Uttarakhand</option>
                                        <option>Himachal Pradesh</option>
                                        <option>Goa</option>
                                        <option>Tripura</option>
                                        <option>Manipur</option>
                                        <option>Meghalaya</option>
                                        <option>Arunachal Pradesh</option>
                                        <option>Mizoram</option>
                                        <option>Nagaland</option>
                                        <option>Sikkim</option>
                                        <option>Delhi</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Country Dropdown -->
                            <div class="col-md-12">
                                <label for="country" class="form-label">Country</label>
                                <div class="position-relative input-icon">
                                    <select name="country" id="country" class="form-select">
                                        <option>Select Country</option>
                                        <option>India</option>
                                        <option>United States</option>
                                        <option>Canada</option>
                                        <option>Australia</option>
                                        <option>United Kingdom</option>
                                        <option>Germany</option>
                                        <option>France</option>
                                        <option>Italy</option>
                                        <option>Japan</option>
                                        <option>China</option>
                                        <option>Brazil</option>
                                        <option>Russia</option>
                                        <option>South Africa</option>
                                        <option>New Zealand</option>
                                        <option>Mexico</option>
                                        <option>Netherlands</option>
                                        <option>Spain</option>
                                        <option>Switzerland</option>
                                        <option>Singapore</option>
                                        <option>UAE</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Pincode -->
                            <div class="col-md-12">
                                <label for="pincode" class="form-label">Pincode</label>
                                <div class="position-relative input-icon">
                                    <input type="text" name="pincode" class="form-control" id="pincode" placeholder="Pincode">
                                </div>
                            </div>

                            <!-- ID Proof -->
                            <div class="col-md-12">
                                <label for="idProof" class="form-label">ID Proof</label>
                                <div class="position-relative input-icon">
                                    <input type="text" name="idProof" class="form-control" id="idProof" placeholder="ID Proof (e.g., Aadhaar, PAN)">
                                </div>
                            </div>

                            <!-- Submit/Reset -->
                            <div class="col-md-12">
                                <div class="d-md-flex d-grid align-items-center gap-3">
                                    <button type="submit" class="btn btn-primary px-4">Submit</button>
                                    <button type="reset" class="btn btn-light px-4">Reset</button>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../common/footer.jsp" />
