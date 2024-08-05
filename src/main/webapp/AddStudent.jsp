<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<title>Add Student</title>

<style>
        .card-header{
            background: linear-gradient(45deg, #56d5a4,#bb6c52);
            color: white;
            border-radius: 15px ;
            text-align: center;
            margin-bottom: 6%;
        }
        .student-form-container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .student-image {
            display: block;
            max-width: 100%;
            width: 60%;
            height: 60%;
            margin: 20px auto 20px;
            border: 2px solid yellow;
            border-radius: 50%;
        }
    </style>
</head>
<body style="background-color: #80DEEA;">
<div class="container">
    <!-- Student Image -->
    
    <!-- Add Student Form -->
    <div class="student-form-container">
    <div class="text-center">
        <img src="https://media.istockphoto.com/id/1029717906/photo/girl-doing-homework-at-home-stock-image.jpg?b=1&s=612x612&w=0&k=20&c=P8wtixBl0iWJlNVcdeq90lp4Iq8sFVL-GMHeSam3Vu8=" alt="Student Image" class="student-image">
    </div>
        <div class="card-header">
            <h2 >Add Student</h2>
        </div>
        <form action="addstudent" method="post">
            <div class="form-group">
                <label for="studentName">Student Name</label>
                <input type="text" class="form-control" id="studentName" placeholder="Enter student name" name="sname" required>
            </div>
            <div class="form-group mb-3">
                <label for="rollNumber">Roll Number</label>
                <input type="text" class="form-control" id="rollNumber" placeholder="Enter roll number" name="rollnumber">
            </div>
            <div class="form-group mb-3">
                <label for="studentSection">Section</label>
                <input type="text" class="form-control" id="studentSection" placeholder="Enter section" name="section">
            </div>
            <div class="form-group mb-3">
                <label for="studentBranch">Branch</label>
                <input type="text" class="form-control" id="studentBranch" placeholder="Enter branch" name="branch">
            </div>

            <div class="form-group">
                <label for="studentEmail">Email address</label>
                <input type="email" class="form-control" id="studentEmail" placeholder="Enter email" name="email">
            </div>
            <div class="form-group">
                <label for="studentPhone">Phone Number</label>
                <input type="tel" class="form-control" id="studentPhone" placeholder="Enter phone number" name="phno">
            </div>
            <div class="form-group">
                <label for="studentDOB">Date of Birth</label>
                <input type="date" class="form-control" id="studentDOB" name="dob">
            </div>
            <div class="form-group">
                <label for="studentGender">Gender</label>
                <select class="form-control" id="studentGender" name="gender">
                    <option>Male</option>
                    <option>Female</option>
                    <option>Other</option>
                </select>
            </div>
            <div class="form-group mb-3">
                <label for="fatherName">Father's Name</label>
                <input type="text" class="form-control" id="fatherName" placeholder="Enter father's name" name="fname">
            </div>
            <div class="form-group mb-3">
                <label for="motherName">Mother's Name</label>
                <input type="text" class="form-control" id="motherName" placeholder="Enter mother's name" name="mname">
            </div>
            <div class="form-group">
                <label for="studentAddress">Address</label>
                <textarea class="form-control" id="studentAddress" rows="3" placeholder="Enter address" name="address"></textarea>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Add Student</button>
        </form>
    </div>
</div>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>