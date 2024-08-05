<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Signup</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h2 style="padding: 0.4rem 0px;">Signup</h2>
            </div>
            <div class="card-body">
                <form action="signup" method="post">
                    <div class="mb-3">
                        <label for="firstName" class="form-label">First Name:</label>
                        <input type="text" class="form-control" placeholder="Enter firstname" id="firstName" name="firstname" required>
                    </div>
                    <div class="mb-3">
                        <label for="lastName" class="form-label">Last Name:</label>
                        <input type="text" class="form-control" placeholder="Enter lastname" id="lastName" name="lastname" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email address:</label>
                        <input type="email" class="form-control" placeholder="Enter email" id="email" name="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password:</label>
                        <input type="password" class="form-control" placeholder="Enter password" id="password" name="password" required>
                    </div>
                    <div class="mb-3">
                        <label for="confirmPassword" class="form-label">Confirm Password:</label>
                        <input type="password" class="form-control" placeholder="Confirm password" id="confirmPassword" name="confirmpassword" required>
                    </div>
                    <div class="mb-3">
                        <label for="phoneNumber" class="form-label">Phone Number:</label>
                        <input type="tel" class="form-control" placeholder="Enter phonenumber" id="phoneNumber" name="phno" required>
                    </div>
                    <div class="mb-3">
                        <label for="dateOfBirth" class="form-label">Date of Birth:</label>
                        <input type="date" class="form-control" placeholder="Enter date of birth" id="dateOfBirth" name="dob" required>
                    </div>
                    <div style="margin-top: 30px;" class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="terms">
                        <label class="form-check-label" for="terms">I agree to the terms and conditions</label>
                    </div>
            </div>
            <div style="font-weight: 30px;" class="card-footer text-center">
                <button style="padding: 12px 36px; border-radius: 4px;" type="submit" class="btn btn-primary w-100">Signup</button>
            </div>
           </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body, html {
        height: 100%;
        background-size: 400% 400%;
        animation: gradient 15s ease infinite;
        background-image: url(https://media.istockphoto.com/id/1463013729/photo/online-registration-form-for-modish-form-filling.jpg?s=2048x2048&w=is&k=20&c=3ZAV9DqSymZphCLXFNP-2QjOlzdPyQLApCQdqKA46Zc=);
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
    }

    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100%;
    }

    .card {
        border-radius: 15px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 600px;
        padding: 20px;
        background: rgba(0, 0, 0, 0.5);
        color: #fff;
    }

    .card-header {
        color: white;
        border-radius: 15px 15px 0 0;
        text-align: center;
    }

    .card-body {
        padding: 20px;
    }

    .card-footer {
        border-radius: 0 0 15px 15px;
        padding: 10px;
        text-align: center;
    }

    .btn-primary {
        background: linear-gradient(45deg, #6fb1fc, #4364f7);
        border: none;
        border-radius: 3px;
        transition: transform 0.2s;
    }

    .btn-primary:hover {
        background: linear-gradient(45deg, #4364f7, #6fb1fc);
        transform: scale(1.05);
    }

    .btn-primary:focus {
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
    }

    .form-control {
        margin-top: 18px;
        font-size: 1.1rem;
    }

    ::placeholder {
        font-size: 0.8rem;
        color: black;
        font-weight: 150px;
        padding: 8px;
    }

    /* Media Query for Tablets */
    @media (max-width: 768px) {
        .card {
            padding: 15px;
            max-width: 90%;
        }

        .btn-primary {
            padding: 10px 30px;
        }
    }

    /* Media Query for Mobile Devices */
    @media (max-width: 576px) {
        .card {
            padding: 10px;
            max-width: 100%;
        }

        .btn-primary {
            padding: 8px 20px;
        }

        .form-control {
            font-size: 1rem;
        }

        ::placeholder {
            font-size: 0.75rem;
        }
    }
</style>
