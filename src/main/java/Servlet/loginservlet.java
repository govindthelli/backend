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

@WebServlet("/login")
public class loginservlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uname=req.getParameter("username");
		String pass=req.getParameter("password");
		Registrationservice ser=new Registrationservice(Registrationdb.getconn());
		boolean f=ser.getbyuname(uname, pass);
		if(f)
		{
			resp.sendRedirect("navbar.jsp");
		}
		else {
			resp.sendRedirect("login.jsp");
		}
	}
}
