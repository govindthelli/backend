package Services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.protocol.Resultset;

import Models.Registration;


public class Registrationservice {
	private  Connection conn;

	public Registrationservice(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addstu(Registration r)
	{
		boolean f=false;
		try {
			String sql="insert into registration(FirstName,LastName,Email,password,confirm_password,Phoneno,DateOfBirth) values(?,?,?,?,?,?,?)";
			PreparedStatement pmst=conn.prepareStatement(sql);
			pmst.setString(1, r.getFirstName());
			pmst.setString(2, r.getLastName());
			pmst.setString(3, r.getEmail());
			pmst.setString(4, r.getPassword());
			pmst.setString(5, r.getConfirm_password());
			pmst.setLong(6, r.getPhoneno());
			pmst.setString(7, r.getDateOfBirth());
			int i=pmst.executeUpdate();
			if(i>0)
			{
				f=true;
			}
		} catch (Exception e) {
			
		}
		return f;
	}
	
	public List<Registration> fetchall()
	{
		List<Registration> l=new ArrayList<Registration>();
		Registration r=null;
		try {
			String sql="select * from registration";
			PreparedStatement pmst=conn.prepareStatement(sql);
			ResultSet rs=pmst.executeQuery();
			while(rs.next())
			{
				r=new Registration();
				r.setFirstName(rs.getString(2));
				r.setLastName(rs.getString(3));
				r.setEmail(rs.getString(3));
				r.setPassword(rs.getString(4));
				r.setConfirm_password(rs.getString(5));
				r.setPhoneno(rs.getLong(6));
				r.setDateOfBirth(rs.getString(7));
				l.add(r);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return l;
	}
	
	
	public boolean getbyuname(String Username,String password)
	{
		boolean f=false;
		try {
			String sql="select password from registration where Email=?";
			PreparedStatement pmst=conn.prepareStatement(sql);
			pmst.setString(1, Username);
			ResultSet rs=pmst.executeQuery();
			String pass = null;
			if(rs.next())
			{
				pass=rs.getString(1);
			}
//			System.out.println(pass);
//			System.out.println(password);
			if(pass.equals(password))
			{
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
}
