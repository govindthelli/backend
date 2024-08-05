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

@WebServlet("/update")
public class updatemarksservlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int Telugu = Integer.parseInt(req.getParameter("Telugu").trim());
	    int Hindi = Integer.parseInt(req.getParameter("Hindi").trim());
	    int English = Integer.parseInt(req.getParameter("English").trim());
	    int Maths = Integer.parseInt(req.getParameter("Maths").trim());
	    int Science = Integer.parseInt(req.getParameter("Science").trim());
	    int Social = Integer.parseInt(req.getParameter("Social").trim());
		    
			String Rollnumber =req.getParameter("Rollnumber");

			studentmarks  marks = new studentmarks(Rollnumber, Telugu, Hindi, English, Maths, Science, Social);
			
			StudentService ser = new StudentService(Registrationdb.getconn());

			

			boolean f = ser.updateMarks(marks);

			if (f) {

				
				
				System.out.println("Updated successfully");
				
				resp.sendRedirect("MarksDetails.jsp");
			}
			
			else
			{
				
		       
				
				System.out.println("Invaild Operation ....");
				
				resp.sendRedirect("updateMarks.jsp");
				
			}
		}

	}

