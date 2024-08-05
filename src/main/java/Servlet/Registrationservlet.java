package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.Registration;
import Services.Registrationservice;
import dbconnection.Registrationdb;

@WebServlet("/signup")
public class Registrationservlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fname=req.getParameter("firstname");
		String lname=req.getParameter("lastname");
		String email=req.getParameter("email");
		String pass=req.getParameter("password");
		String cpass=req.getParameter("confirmpassword");
		long phno=Long.parseLong(req.getParameter("phno"));
		String dob=req.getParameter("dob");
		Registration reg=new Registration(fname, lname, email, pass, cpass, phno, dob);
		Registrationservice ser=new Registrationservice(Registrationdb.getconn());
	    boolean f=ser.addstu(reg);
	    if(f)
	    {
	    	resp.sendRedirect("navbar.jsp");
	    }
	    else {
	    	resp.sendRedirect("signup.jsp");
	    }
	}
}
