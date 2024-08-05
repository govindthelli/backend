<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<%@include file="bootstrap.jsp" %>
<style>
    body {
        background-color: #f0f2f5;
        font-family: Arial, sans-serif;
    }
    
    .vh-100 {
        height: 100vh;
    }
    
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100%;
    }
    
    .card {
        border-radius: 15px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        width: 90%; /* Increase the width of the card */
        max-width: 900px; /* Adjust the max-width as needed */
        height: auto; /* Ensure the card height is flexible */
        min-height: 500px; /* Set a minimum height */
    }
    
    .card-img {
        border-radius: 15px 0 0 15px;
        object-fit: cover;
        height: 100%;
        max-height: 100%; /* Ensure the image scales correctly */
    }
    
    .card-body {
        padding: 2.5rem; /* Increase padding for more content space */
        background-color: #ffffff;
        border-radius: 0 15px 15px 0;
    }
    
    .form-label {
        font-weight: bold;
        color: #333;
    }
    
    .form-control {
        margin-bottom: 1.5rem;
        border-radius: 5px;
    }
    
    .btn-custom {
        background-color: #5c6bc0;
        border: none;
        color: white;
        padding: 0.75rem 2.5rem; /* Increase padding for larger buttons */
        border-radius: 5px;
        transition: background-color 0.3s;
    }
    
    .btn-custom:hover {
        background-color: #3949ab;
    }
    
    .text-muted {
        color: #777 !important;
    }
    
    .links {
        margin-top: 1rem;
        display: flex;
        justify-content: space-between;
    }
    
    .links a {
        color: #5c6bc0;
        text-decoration: none;
    }
    
    .links a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body style="background-color: #80DEEA;">
<section class="vh-100">
  <div class="container py-5">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-lg-12"> <!-- Adjust the column size if needed -->
        <div class="card">
          <div class="row g-0">
            <div class="col-md-6 d-none d-md-block">
              <img src="https://media.istockphoto.com/id/172935032/photo/businesswoman.jpg?b=1&s=612x612&w=0&k=20&c=RwxAZQiKHoMBFYLWmJ4dBOj2U6vx9mCIod0gAqCG-uc="
                alt="login image" class="img-fluid card-img" />
            </div>
            <div class="col-md-6 d-flex align-items-center">
              <div class="card-body text-black">

                <h3 class="mb-5 text-center">Admin Login</h3>

                <form action="adminlogin" method="post">
                  <div class="mb-3">
                    <label class="form-label" for="username">Username</label>
                    <input type="text" id="username" class="form-control" name="username" required>
                  </div>
                  
                  <div class="mb-3">
                    <label class="form-label" for="password">Password</label>
                    <input type="password" id="password" class="form-control" name="password" required>
                     <div class="links mt-4">
                    <a href="#!" class="small text-muted">Forgot password?</a>
                  </div>
                  </div>
                  
                 
                  <div class="text-center">
                    <button type="submit" class="btn btn-custom btn-lg">Login</button>
                  </div>
                </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>
