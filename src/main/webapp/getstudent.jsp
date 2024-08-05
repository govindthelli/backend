<%@page import="dbconnection.Registrationdb"%>
<%@page import="Services.StudentService"%>
<%@page import="Models.student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get student data</title>
<%@include file="bootstrap.jsp" %>
<style>

</style>
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center mb-4">Student Details</h2>
    
        <%
            String rollnum = request.getParameter("RollNumber");
            student s = null;
            
            if (rollnum != null && !rollnum.isEmpty()) {
                StudentService ser = new StudentService(Registrationdb.getconn());
                s = ser.getbyroll(rollnum);
            }
        %>
    
        <% if (s != null) { %>
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                    <tr>
                        <th scope="col">Field</th>
                        <th scope="col">Details</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">Student Name</th>
                        <td><%= s.getStudentName() %></td>
                    </tr>
                    <tr>
                        <th scope="row">Roll Number</th>
                        <td><%= s.getRollNumber() %></td>
                    </tr>
                    <tr>
                        <th scope="row">Section</th>
                        <td><%= s.getSection() %></td>
                    </tr>
                    <tr>
                        <th scope="row">Branch</th>
                        <td><%= s.getBranch() %></td>
                    </tr>
                    <tr>
                        <th scope="row">Email</th>
                        <td><%= s.getEmail() %></td>
                    </tr>
                    <tr>
                        <th scope="row">Phone Number</th>
                        <td><%= s.getPhoneNumber() %></td>
                    </tr>
                    <tr>
                        <th scope="row">Date of Birth</th>
                        <td><%= s.getDateOfBirth() %></td>
                    </tr>
                    <tr>
                        <th scope="row">Gender</th>
                        <td><%= s.getGender() %></td>
                    </tr>
                    <tr>
                        <th scope="row">Father's Name</th>
                        <td><%= s.getFatherName() %></td>
                    </tr>
                    <tr>
                        <th scope="row">Mother's Name</th>
                        <td><%= s.getMotherName() %></td>
                    </tr>
                    <tr>
                        <th scope="row">Address</th>
                        <td><%= s.getAddress() %></td>
                    </tr>
                     <tr>
                        <th scope="row">Results</th>
                        <td> <a href="getmarks.jsp?RollNumber=<%=s.getRollNumber() %>" class="btn btn-warning btn-sm">Get Results</a></td>
                    </tr>
                   
                </tbody>
            </table>
        <% } else { %>
            <div class="alert alert-warning text-center">
                No student found with the given Roll Number.
            </div>
        <% } %>
    </div>
</body>
</html>
