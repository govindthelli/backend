<%@page import="Models.studentmarks"%>
<%@page import="dbconnection.Registrationdb"%>
<%@page import="Services.StudentService"%>
<%@page import="Models.student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get student marks</title>
<%@include file="bootstrap.jsp" %>
</head>
<body >
    <div class="container mt-5">
        <h2 class="text-center mb-4">Student Marks</h2>
    
        <%
            String rollnum = request.getParameter("RollNumber");
        
            studentmarks s = null;
            
            if (rollnum != null && !rollnum.isEmpty()) {
                StudentService ser = new StudentService(Registrationdb.getconn());
                s = ser.getByMarksId(rollnum);
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
                        <th scope="row">Telugu</th>
                        <td><%= s.getTelugu() %></td>
                    </tr>
                    <tr>
                        <th scope="row">Hindi</th>
                        <td><%= s.getHindi() %></td>
                    </tr>
                    <tr>
                        <th scope="row">English</th>
                        <td><%=s.getEnglish() %></td>
                    </tr>
                    <tr>
                        <th scope="row">Maths</th>
                        <td><%=s.getMaths() %></td>
                    </tr>
                    <tr>
                        <th scope="row">Science</th>
                        <td><%= s.getScience() %></td>
                    </tr>
                    <tr>
                        <th scope="row">Social</th>
                        <td><%= s.getSocial() %></td>
                    </tr>
                    <tr>
                        <th scope="row">Total</th>
                        <td><% int sum =s.getEnglish()+s.getHindi()+s.getTelugu()+s.getMaths()+s.getScience()+s.getSocial(); out.println(sum);%></td>
                    </tr>
                    <tr>
                        <th scope="row">Percentage</th>
                        <td><% out.println((sum*100)/600+"%");%></td>
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
