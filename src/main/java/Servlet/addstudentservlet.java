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

@WebServlet("/addstudent")
public class addstudentservlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("sname");
		String rnum=req.getParameter("rollnumber");
		String sec=req.getParameter("section");
		String brnh=req.getParameter("branch");
		String email=req.getParameter("email");
		long phno=Long.parseLong(req.getParameter("phno"));
		String dob=req.getParameter("dob");
		String gender=req.getParameter("gender");
		String fname=req.getParameter("fname");
		String mname=req.getParameter("mname");
		String add=req.getParameter("address");
		student stu=new student(name, rnum, sec, brnh, email, phno, dob, gender, fname, mname, add);
		StudentService ser=new StudentService(Registrationdb.getconn());
		boolean f=ser.addstu(stu);
		if(f)
		{
			resp.sendRedirect("home.jsp");
		}
		else {
			resp.sendRedirect("AddStudent.jsp");
		}
	}
}
