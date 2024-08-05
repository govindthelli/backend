package Services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.protocol.Resultset;

import Models.student;
import Models.studentmarks;

public class StudentService {
	private Connection conn;

	public StudentService(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean addstu(student s)
	{
		boolean f=false;
		try {
			String sql="insert into student_details(StudentName,RollNumber,Section,Branch,Email,PhoneNumber,DateOfBirth,Gender,FatherName,MotherName,Address) values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pmst=conn.prepareStatement(sql);
			pmst.setString(1, s.getStudentName());
			pmst.setString(2, s.getRollNumber());
			pmst.setString(3, s.getSection());
			pmst.setString(4, s.getBranch());
			pmst.setString(5, s.getEmail());
			pmst.setLong(6, s.getPhoneNumber());
			pmst.setString(7, s.getDateOfBirth());
			pmst.setString(8, s.getGender());
			pmst.setString(9, s.getFatherName());
			pmst.setString(10, s.getMotherName());
			pmst.setString(11, s.getAddress());
			int i=pmst.executeUpdate();
			if(i>0)
			{
				f=true;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return f;
		
	}
	public List<student> fetchall()
	{
		List<student> l=new ArrayList<student>();
		student s=null;
		try {
			String sql="select * from student_details";
			PreparedStatement pmst=conn.prepareStatement(sql);
			ResultSet rs=pmst.executeQuery();
			while(rs.next())
			{
				s=new student();
				s.setStudentName(rs.getString(2));
				s.setRollNumber(rs.getString(3));
				s.setSection(rs.getString(4));
				s.setBranch(rs.getString(5));
				s.setEmail(rs.getString(6));
				s.setPhoneNumber(rs.getLong(7));
				s.setDateOfBirth(rs.getString(8));
				s.setGender(rs.getString(9));
				s.setFatherName(rs.getString(10));
				s.setMotherName(rs.getString(11));
				s.setAddress(rs.getString(12));
				l.add(s);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return l;
	}
	public student getbyroll(String rollnum)
	{
		student s=null;
		try {
			String sql="select * from student_details where RollNumber=?";
			PreparedStatement pmst=conn.prepareStatement(sql);
			pmst.setString(1, rollnum);
			ResultSet rs=pmst.executeQuery();
			while(rs.next())
			{
				s=new student();
				s.setStudentName(rs.getString(2));
				s.setRollNumber(rs.getString(3));
				s.setSection(rs.getString(4));
				s.setBranch(rs.getString(5));
				s.setEmail(rs.getString(6));
				s.setPhoneNumber(rs.getLong(7));
				s.setDateOfBirth(rs.getString(8));
				s.setGender(rs.getString(9));
				s.setFatherName(rs.getString(10));
				s.setMotherName(rs.getString(11));
				s.setAddress(rs.getString(12));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
		
	}
	public boolean updatestu(student s)
	{
		boolean f=false;
		try {
			String sql="update student_details set StudentName=?,Section=?,Branch=?,Email=?,PhoneNumber=?,DateOfBirth=?,Gender=?,FatherName=?,MotherName=?,Address=? where RollNumber=?";
			PreparedStatement pmst=conn.prepareStatement(sql);
			pmst.setString(1, s.getStudentName());
			pmst.setString(2, s.getSection());
			pmst.setString(3, s.getBranch());
			pmst.setString(4, s.getEmail());
			pmst.setLong(5, s.getPhoneNumber());
			pmst.setString(6, s.getDateOfBirth());
			pmst.setString(7, s.getGender());
			pmst.setString(8, s.getFatherName());
			pmst.setString(9, s.getMotherName());
			pmst.setString(10, s.getAddress());
			pmst.setString(11, s.getRollNumber());
			int i=pmst.executeUpdate();
			if(i>0)
			{
				f=true;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return f;
	}
	public boolean deletebyroll(String rollnum)
	{
		boolean f=false;
		try {
			String sql="delete from student_details where RollNumber=?";
			PreparedStatement pmst=conn.prepareStatement(sql);
			pmst.setString(1, rollnum);
			int i=pmst.executeUpdate();
			if(i>0)
			{
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
		
	}
	public boolean addmarks(studentmarks s)
	{
		boolean f=false;
		try {
			
			String sql1="select RollNumber from student_details where RollNumber=?";
			PreparedStatement pmst1=conn.prepareStatement(sql1);
			pmst1.setString(1, s.getRollnumber());
			ResultSet rs=pmst1.executeQuery();
			String rnum=null;
			if(rs.next())
			{
				String sql="insert into student_marks(RollNumber,Telugu,Hindi,English,Maths,Science,Social) values(?,?,?,?,?,?,?)";
				PreparedStatement pmst=conn.prepareStatement(sql);
				pmst.setString(1, s.getRollnumber());
				pmst.setInt(2, s.getTelugu());
				pmst.setInt(3, s.getHindi());
				pmst.setInt(4, s.getEnglish());
				pmst.setInt(5, s.getMaths());
				pmst.setInt(6, s.getScience());
				pmst.setInt(7, s.getSocial());
				int i=pmst.executeUpdate();
				if(i>0)
				{
					f=true;
				}
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return f;
		
	}
	public List<studentmarks> fetchallmarks()
	{
		List<studentmarks> l=new ArrayList<studentmarks>();
		studentmarks s=null;
		try {
			String sql="select * from student_marks";
			PreparedStatement pmst=conn.prepareStatement(sql);
			ResultSet rs=pmst.executeQuery();
			while(rs.next())
			{
				s=new studentmarks();
				s.setRollnumber(rs.getString(2));
				s.setTelugu(rs.getInt(3));
				s.setHindi(rs.getInt(4));
				s.setEnglish(rs.getInt(5));
				s.setMaths(rs.getInt(6));
				s.setScience(rs.getInt(7));
				s.setSocial(rs.getInt(8));
				l.add(s);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return l;
	}
	 public studentmarks getByMarksId(String Rollnumber) {
	     	
	     	
	     	studentmarks m = null;
	     	
	     	
	     	try {
	     		
	     		String sql = "select * from student_marks where Rollnumber = ?";
	     		
	     		PreparedStatement pst = conn.prepareStatement(sql);
	     		
	     		pst.setString(1, Rollnumber);
	     		
	     		ResultSet rs = pst.executeQuery();
	     	
	     		   while(rs.next())
	   		    	 
	   		     {
	   		    	 
	   		    	 m = new studentmarks();
	   		    	 
	   		    	 m.setRollnumber(rs.getString(2));
	   		    	 m.setEnglish(rs.getInt(5));
	   		    	 m.setHindi(rs.getInt(4));
	   		    	 m.setTelugu(rs.getInt(3));
	   		    	 m.setMaths(rs.getInt(6));
	   		    	 m.setScience(rs.getInt(7));
	   		    	 m.setSocial(rs.getInt(8));
	   		    	 
	     		
	     	}
	     		   
	     	}
	     	catch (Exception e) {
					e.printStackTrace();
				}
	     	return m;
	     }
	   public boolean updateMarks(studentmarks marks) {

	 		boolean f = false;

	 		try {

	 			String sql = "update student_marks set Telugu=?,Hindi=?,English=?,Maths=?,Science=?,Social =? where Rollnumber =?";

	 			PreparedStatement pst = conn.prepareStatement(sql);
	 			
	 			pst.setInt(1, marks.getTelugu());
	 			pst.setInt(2, marks.getHindi());
	 			pst.setInt(3, marks.getEnglish());
	 			pst.setInt(4, marks.getMaths());
	 			pst.setInt(5, marks.getScience());
	 			pst.setInt(6, marks.getSocial());
	 			pst.setString(7, marks.getRollnumber());
	 			int i = pst.executeUpdate();

	 			if (i == 1) {
	 				f = true;
	 			}
	 		} catch (Exception e) {
	 			e.printStackTrace();
	 		}
	 		return f;
	 	}
	public boolean deletemarksbyroll(String rnum) {
		boolean f=false;
		try {
			String sql="delete from student_marks where RollNumber=?";
			PreparedStatement pmst=conn.prepareStatement(sql);
			pmst.setString(1, rnum);
			int i=pmst.executeUpdate();
			if(i>0)
			{
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	   

	   
	     
	     
	     

}
