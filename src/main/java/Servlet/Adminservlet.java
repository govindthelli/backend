package Servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/adminlogin")
public class Adminservlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uname=req.getParameter("username");
		String pass=req.getParameter("password");
		if(uname.equals("Admin") && pass.equals("Admin"))
		{
			resp.sendRedirect("home.jsp");
		}
		else {
			resp.sendRedirect("admin.jsp");
		}
	}
}
