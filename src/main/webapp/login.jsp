<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@include file="bootstrap.jsp" %>
</head>
<style>
    body {
        background-image: url(https://images.pexels.com/photos/2882566/pexels-photo-2882566.jpeg?auto=compress&cs=tinysrgb&w=600);
        background-position: center center;
        background-repeat: no-repeat;
        background-size: cover;
        height: 100vh;
    }
    .card {
        border-radius: 15px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 600px;
        padding: 20px;
        background: rgba(0, 0, 0, 0.5);
        color: #fff;
        margin-top: 30%;
    }

    .card-header, .card-footer {
        color: white;
    }

    .container {
        height: 100vh;
    }

    @media (max-width: 768px) {
        .card {
            margin-top: 15%;
            padding: 15px;
        }
        .card-header h3 {
            font-size: 1.5rem;
        }
        .btn {
            font-size: 1rem;
        }
        .card-footer p {
            font-size: 0.9rem;
        }
    }

    @media (max-width: 576px) {
        .card {
            margin-top: 10%;
            padding: 10px;
            max-width: 90%;
        }
        .card-header h3 {
            font-size: 1.25rem;
        }
        .btn {
            font-size: 0.85rem;
        }
        .card-footer p {
            font-size: 0.8rem;
        }
    }
</style>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header text-center">
                        <h3>Login</h3>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="mb-3">
                                <label for="email" class="form-label">Username</label>
                                <input type="email" class="form-control" id="email" required>
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" required>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">Login</button>
                        </form>
                    </div>
                    <div class="card-footer text-center">
                        <p>Don't have an account? <a style="font-weight: 1rem;" href="signup.jsp">Sign up</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
