<%@page import="Models.student"%>
<%@page import="java.util.List"%>
<%@page import="dbconnection.Registrationdb"%>
<%@page import="Services.StudentService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students Details</title>
<%@include file="bootstrap.jsp" %>
<style>
   .table-container {
        width: 100%;
        overflow-x: auto; /* Enable horizontal scrollbar */
        margin-bottom: 0.2rem; /* Add some space below the table */
    }

    /* Increase the table's overall width to force horizontal scrolling */
    .table {
        width: 150%; /* Adjust this percentage as needed */
        
    }

    /* Set specific column widths to handle long content */
    .table th, .table td {
        min-width: 150px; /* Set minimum width for columns */
        white-space: nowrap; /* Prevent text from wrapping */
        border:2px solid #000;
    }

    /* Change table heading color */
    .table-dark th {
        background-color: #007bff; /* Bootstrap primary color */
        color: #ffffff; /* White text */
    }
</style>
</head>
<body style="background-color: #d996be;">
	<div class="container mt-5">
    <h2 class="mb-4">Student Details</h2>
    <table class="table table-bordered table-hover">
        <thead class="table-dark">
            <tr>
                <th>Student Name</th>
                <th>Roll Number</th>
                <th>Section</th>
                <th>Branch</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Date of Birth</th>
                <th>Gender</th>
                <th>Father's Name</th>
                <th>Mother's Name</th>
                <th>Address</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%
                // Assuming fetchall() is a method that retrieves the list of students
                StudentService ser=new StudentService(Registrationdb.getconn());
            	List<student> students=ser.fetchall();
                for (student s : students) {
            %>
            <tr>
                <td><%= s.getStudentName() %></td>
                <td><%= s.getRollNumber() %></td>
                <td><%= s.getSection() %></td>
                <td><%= s.getBranch() %></td>
                <td><%= s.getEmail() %></td>
                <td><%= s.getPhoneNumber() %></td>
                <td><%= s.getDateOfBirth() %></td>
                <td><%= s.getGender() %></td>
                <td><%= s.getFatherName() %></td>
                <td><%= s.getMotherName() %></td>
                <td><%= s.getAddress() %></td>
                <td>
                    <a href="updateStudent.jsp?rollnumber=<%= s.getRollNumber() %>" class="btn btn-warning btn-sm">Update</a>
                    <a href="deletestudent?Rollnumber=<%= s.getRollNumber() %>" class="btn btn-danger btn-sm">Delete</a>
                </td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</div>
</body>
</html>