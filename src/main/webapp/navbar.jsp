<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>StudentManagement</title>
<%@include file="bootstrap.jsp" %>
<link rel="stylesheet" type="text/css" href="css/nav-styles.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-pale nav-bar">
        <div class="container-fluid ">
            <!-- Brand -->
            <a class="navbar-brand heading" href="#">StudentManagement</a>

            <!-- Navbar toggler (hamburger icon for small screens) -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Navbar links -->
            <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Student Details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Contact Us</a>
                    </li>
                </ul>
            </div>
			<form action="getstudent.jsp" method="post" class="d-flex me-3">
                <input class="form-control me-2" type="search" placeholder="Search by Rollnumber" aria-label="Search" name="RollNumber">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
            <!-- Login and Admin buttons -->
            <div class="d-flex flex-column flex-lg-row me-3">
                <a href="admin.jsp" class="btn btn-primary mb-2 mb-lg-0 me-lg-2">Admin</a>
                <a href="login.jsp" class="btn btn-primary">Login</a>
            </div>
        </div>
    </nav>

    <!-- Full-Screen Background Image -->
    <div class="fullscreen-bg"></div>

</body>
</html>

<style>
* {
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
}
body, html {
    height: 100%;
    margin: 0;
}
.nav-bar {
    background-color: #d996be;
    padding: 10px 8px;
}
.heading {
    color: #fff;
}
.nav-item {
    font-weight: 20px;
}
.fullscreen-bg {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: url('./images/body.jpg');
    background-size: cover;
    background-position: center;
    z-index: -1; /* Ensure the image stays behind all content */
}
@media (max-width: 992px) {
    .navbar-nav {
        text-align: center;
    }
    .form-control {
        width: 100%;
        margin-bottom: 10px;
    }
    .d-flex.flex-column.flex-lg-row {
        align-items: center;
    }
}
</style>
