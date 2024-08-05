package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Services.StudentService;
import dbconnection.Registrationdb;

@WebServlet("/deleteMarks")
public class deletemarksservlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String rnum=req.getParameter("Rollnumber");
		StudentService ser=new StudentService(Registrationdb.getconn());
		boolean f=ser.deletemarksbyroll(rnum);
		if(f)
		{
			resp.sendRedirect("MarksDetails.jsp");
		}
		else {
			resp.sendRedirect("MarksDetails.jsp");
		}
	}
}
