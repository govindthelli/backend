package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.studentmarks;
import Services.StudentService;
import dbconnection.Registrationdb;

@WebServlet("/addmarks")
public class addmarksservlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String rnum=req.getParameter("Rollnumber");
		int tel=Integer.parseInt(req.getParameter("Telugu").trim());
		int hin=Integer.parseInt(req.getParameter("Hindi").trim());
		int eng=Integer.parseInt(req.getParameter("English").trim());
		int mat=Integer.parseInt(req.getParameter("Maths").trim());
		int sci=Integer.parseInt(req.getParameter("Science").trim());
		int soc=Integer.parseInt(req.getParameter("Social").trim());
		studentmarks sm=new studentmarks(rnum, tel, hin, eng, mat, sci, soc);
		StudentService ser=new StudentService(Registrationdb.getconn());
		boolean f=ser.addmarks(sm);
		if(f)
		{
			resp.sendRedirect("home.jsp");
		}
		else {
			resp.sendRedirect("AddMarks.jsp");
		}
	}
}
