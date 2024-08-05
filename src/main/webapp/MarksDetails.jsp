<%@page import="Models.studentmarks"%>
<%@page import="java.util.List"%>
<%@page import="dbconnection.Registrationdb"%>
<%@page import="Services.StudentService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Marks Details</title>
<%@include file="bootstrap.jsp" %>
<style>
    /* Table styles */
    .table th, .table td {
    padding: 12px;
    text-align: center;
    border: 1px solid #ddd;
}

.table th {
    background-color: #007bff;
    color: white;
}
/* Button styles */
.btn {
    padding: 5px 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.btn-warning {
    background-color: #ffc107;
    color: white;
}

.btn-danger {
    background-color: #dc3545;
    color: white;
}

.btn-warning:hover, .btn-danger:hover {
    opacity: 0.8;
}
    .table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
        border: 1px solid #ddd; /* Add border to table */
    }

    .table th, .table td {
        padding: 12px;
        text-align: center;
        border: 2px solid #000; /* Add border to table data */
    }

    .table th {
        background-color: #007bff;
        color: white;
    }

    /* Button styles */
    .btn {
        padding: 5px 10px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .btn-warning {
        background-color: #ffc107;
        color: white;
    }

    .btn-danger {
        background-color: #dc3545;
        color: white;
    }

    .btn-warning:hover, .btn-danger:hover {
        opacity: 0.8;
    }
</style>
</head>
<body style="background-color: #d996be;">
    <div class="container mt-5">
        <h2 class="mb-4">Marks Details</h2>
        <table class="table">
            <thead>
                <tr>
                    <th>Roll Number</th>
                    <th>Telugu</th>
                    <th>Hindi</th>
                    <th>English</th>
                    <th>Maths</th>
                    <th>Science</th>
                    <th>Social</th>
                    <th>Total</th>
                    <th>Percentage</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    StudentService ser = new StudentService(Registrationdb.getconn());
                    List<studentmarks> s = ser.fetchallmarks();
                    for (studentmarks stumar : s) {
                %>
                <tr>
                    <td><%= stumar.getRollnumber() %></td>
                    <td><%= stumar.getTelugu() %></td>
                    <td><%= stumar.getHindi() %></td>
                    <td><%= stumar.getEnglish() %></td>
                    <td><%= stumar.getMaths() %></td>
                    <td><%= stumar.getScience() %></td>
                    <td><%= stumar.getSocial() %></td>
                    <td><% int sum =stumar.getEnglish()+stumar.getHindi()+stumar.getTelugu()+stumar.getMaths()+stumar.getScience()+stumar.getSocial(); out.println(sum);%></td>
                    <td><% out.println((sum*100)/600);%></td>
                    <td>
                        <a href="updateMarks.jsp?Rollnumber=<%= stumar.getRollnumber() %>" class="btn btn-warning">Update</a>
                        <a href="deleteMarks?Rollnumber=<%= stumar.getRollnumber() %>" class="btn btn-danger">Delete</a>
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