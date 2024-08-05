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

@WebServlet("/search")
public class searchservlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String rnum=req.getParameter("Rollnumber");
		StudentService ser=new StudentService(Registrationdb.getconn());
		student f=ser.getbyroll(rnum);
	}
}
