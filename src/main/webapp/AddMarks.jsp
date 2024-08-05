<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Marks</title>
<%@include file="bootstrap.jsp" %>
<style>
    /* Apply color filters to the image */
    .custom-image {
        display: block;
        max-width: 100%;
        width: 60%;
        height: auto; /* Ensure the image remains proportional */
        margin: 20px auto;
        border: 2px solid yellow;
        border-radius: 50%;
    }

    /* Add animation to the button */
    .btn-animated {
        margin-left: auto;
        margin-right: auto;
        display: block;
        transition: transform 0.3s ease, background-color 0.3s ease;
    }

    .btn-animated:hover {
        transform: scale(1.1);
        background-color: #4CAF50;
        color: white;
    }
</style>
</head>
<body style="background-color: #80DEEA;">
    <div class="container p-4">
        <div class="row justify-content-center">
            <div class="col-12 col-md-8 col-lg-6">
                <div class="card shadow-lg">
                    <div class="card-body" style="font-family: serif; font-weight: 700;">
                        <!-- Adding image from the web -->
                        <img alt="Check the connection" src="https://images.pexels.com/photos/4050315/pexels-photo-4050315.jpeg?auto=compress&cs=tinysrgb&w=600" class="custom-image">
                        <p class="fs-3 text-center" style="color: green">Marks Obtained</p>
                        <hr size="10px" style="color: red;">
                        <form action="addmarks" method="post">
                            <div class="mb-3">
                                <label class="form-label">Rollnumber</label>
                                <input type="text" class="form-control" name="Rollnumber">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Telugu</label>
                                <input type="text" class="form-control" name="Telugu">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Hindi</label>
                                <input type="text" class="form-control" name="Hindi">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">English</label>
                                <input type="text" class="form-control" name="English">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Maths</label>
                                <input type="text" class="form-control" name="Maths">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Science</label>
                                <input type="text" class="form-control" name="Science">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Social</label>
                                <input type="text" class="form-control" name="Social">
                            </div>
                            <!-- Button with animation -->
                            <button class="btn btn-outline-success btn-animated">Add Marks</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
