package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.student;
import Services.StudentService;
import dbconnection.Registrationdb;

@WebServlet("/deletestudent")
public class deletestudentservlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String rnum=req.getParameter("Rollnumber");
		StudentService ser=new StudentService(Registrationdb.getconn());
		boolean f=ser.deletebyroll(rnum);
		if(f)
		{
			resp.sendRedirect("StudentsDetails.jsp");
		}
		else {
			resp.sendRedirect("StudentsDetails.jsp");
		}
	}
}
