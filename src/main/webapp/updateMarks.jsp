<%@page import="Services.StudentService"%>
<%@page import="Models.studentmarks"%>
<%@page import="dbconnection.Registrationdb"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Marks</title>
<%@include file="bootstrap.jsp"%>
</head>
<style>
    .student-image {
        display: block;
        max-width: 100%;
        width: 60%;
        height: auto; /* Ensure the image scales proportionally */
        margin: 20px auto;
        border: 2px solid yellow;
        border-radius: 50%;
    }
</style>
<body style="background-color: #80DEEA;">
    <div class="container p-4">
        <div class="row justify-content-center">
            <div class="col-12 col-md-8 col-lg-6">
                <div class="card shadow-lg">
                    <div class="card-body" style="font-family: serif; font-weight: 700;">
                        <img class="student-image" alt="Check the connection" src="https://images.pexels.com/photos/261895/pexels-photo-261895.jpeg?auto=compress&cs=tinysrgb&w=600" style="height: 13rem; width: auto;">
                        <p class="fs-3 text-center" style="color: green">Update Marks</p>
                        <hr size="10px" style="color: red;">

                        <%
                        String Rollnumber = request.getParameter("Rollnumber");
                        StudentService ser = new StudentService(Registrationdb.getconn());
                        studentmarks m = ser.getByMarksId(Rollnumber);
                        %>

                        <form action="update" method="post">
                            <div class="mb-3">
                                <label class="form-label">Telugu</label>
                                <input type="text" class="form-control" name="Telugu" value="<%=m.getTelugu()%>">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Hindi</label>
                                <input type="text" class="form-control" name="Hindi" value="<%=m.getHindi()%>">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">English</label>
                                <input type="text" class="form-control" name="English" value="<%=m.getEnglish()%>">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Maths</label>
                                <input type="text" class="form-control" name="Maths" value="<%=m.getMaths()%>">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Science</label>
                                <input type="text" class="form-control" name="Science" value="<%=m.getScience()%>">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Social</label>
                                <input type="text" class="form-control" name="Social" value="<%=m.getSocial()%>">
                            </div>

                            <input type="hidden" name="Rollnumber" value="<%=m.getRollnumber()%>">

                            <button class="btn btn-outline-primary d-block mx-auto">Update Marks</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
