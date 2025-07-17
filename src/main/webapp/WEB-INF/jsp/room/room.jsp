<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="../common/header.jsp"/>

<!--start page wrapper -->
<div class="page-wrapper">
    <div class="page-content">
        <div class="row">
            <div class="col-xl-6 mx-auto">
                <div class="card">
                    <div class="card-body p-4">
                        <h5 class="mb-4">Add Room</h5>
                        <form class="row g-3" action="addRooms" method="post" >

                            <!-- Room Number -->
                            <div class="col-md-12">
                                <label for="room_number" class="form-label">Room Number</label>
                                <div class="position-relative input-icon">
                                    <input type="text" name="room_number" class="form-control" id="room_number" placeholder="Room Number">
                                    
                                </div>
                            </div>

                            <!-- Room Type -->
                            <div class="col-md-12">
                                <label for="room_types" class="form-label">Room Type</label>
                                <div class="position-relative input-icon">
                                    <select name="room_types" id="room_types" class="form-select">
                                        <option>Select Room</option>
                                        <option>Single Room</option>
                                        <option>Double Room</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Bed Count -->
                            <div class="col-md-12">
                                <label for="bed_count" class="form-label">Bed Count</label>
                                <div class="position-relative input-icon">
                                    <input type="text" name="bed_count" class="form-control" id="bed_count" placeholder="Bed Count">
                                </div>
                            </div>

                            <!-- Price Per Night -->
                            <div class="col-md-12">
                                <label for="price_per_night" class="form-label">Price Per Night</label>
                                <div class="position-relative input-icon">
                                    <input type="text" name="price_per_night" class="form-control" id="price_per_night" placeholder="Price">
                                </div>
                            </div>

                            <!-- AC / Non-AC -->
                            <div class="col-md-12">
                                <label class="form-label">AC / Non-AC:</label>
                                <div class="position-relative input-icon">
                                    <input type="radio" name="ac_type" value="AC"> AC
                                    <input type="radio" name="ac_type" value="Non-AC" class="ms-3"> Non-AC

                                </div>
                            </div>

                            <!-- Description -->
                            <div class="col-md-12">
                                <label for="description" class="form-label">Description</label>
                                <div class="position-relative input-icon">
                                    <textarea name="description" rows="4" cols="30" class="form-control" id="description" placeholder="Description"></textarea>
                                    <span class="fa fa-align-left position-absolute top-0 end-0 me-3 mt-2"></span>
                                </div>
                            </div>

                            <!-- Room Image -->
                            <div class="col-md-4">
                                <label for="room_image_path" class="form-label">Room Image:</label>
                                <div class="position-relative input-icon">
                                    <input type="file" name="room_image_path" class="form-control" id="room_image_path">
                                    <span class="fa fa-image position-absolute top-50 translate-middle-y end-0 me-3"></span>
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
