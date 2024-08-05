<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
<%@include file="bootstrap.jsp" %>
<style>
    body {
        background-image: url('./images/admin.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        font-family: Arial, sans-serif;
        color: #fff;
        margin: 0;
        padding: 0;
        height: 100vh;
    }

    .banner-body {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        text-align: center;
        background: rgba(0, 0, 0, 0.5);
        padding: 45px;
        border-radius: 15px;
    }

    .banner-body h1 {
        font-size: 3rem;
        margin-bottom: 3rem;
    }

    .banner-body .btn {
        margin-top: 1rem;
        padding: 0.75rem 1.5rem;
        font-size: 1rem;
        border-radius: 5px;
        transition: transform 0.2s;
    }

    .banner-body .btn:hover {
        transform: scale(1.05);
    }

    /* Responsive styles */
    @media (max-width: 768px) {
        .banner-body h1 {
            font-size: 2rem;
            margin-bottom: 2rem;
        }

        .banner-body {
            padding: 30px;
        }

        .banner-body .btn {
            font-size: 0.9rem;
            padding: 0.5rem 1.2rem;
        }
    }

    @media (max-width: 576px) {
        .banner-body h1 {
            font-size: 1.5rem;
            margin-bottom: 1.5rem;
        }

        .banner-body {
            padding: 20px;
        }

        .banner-body .btn {
            font-size: 0.8rem;
            padding: 0.4rem 1rem;
        }
    }
</style>
</head>
<body>
<div class="banner-body">
    <h1>Welcome Admin</h1>
    <a href="AddStudent.jsp"><button class="btn btn-outline-success btn-md">Add Student</button></a>
    <a href="AddMarks.jsp"><button class="btn btn-outline-success btn-md">Add Students Marks</button></a>
    <a href="StudentsDetails.jsp"><button class="btn btn-outline-primary btn-md">Students Details</button></a>
    <a href="MarksDetails.jsp"><button class="btn btn-outline-primary btn-md">Students Marks Details</button></a>
    <a href="admin.jsp"><button class="btn btn-outline-danger btn-md">Logout</button></a>
</div>
</body>
</html>
