package Models;

public class studentmarks {
	private String Rollnumber;
	private int Telugu;
	private int Hindi;
	private int English;
	private int Maths;
	private int Science;
	private int Social;
	public String getRollnumber() {
		return Rollnumber;
	}
	public void setRollnumber(String rollnumber) {
		Rollnumber = rollnumber;
	}
	public int getTelugu() {
		return Telugu;
	}
	public void setTelugu(int telugu) {
		Telugu = telugu;
	}
	public int getHindi() {
		return Hindi;
	}
	public void setHindi(int hindi) {
		Hindi = hindi;
	}
	public int getEnglish() {
		return English;
	}
	public void setEnglish(int english) {
		English = english;
	}
	public int getMaths() {
		return Maths;
	}
	public void setMaths(int maths) {
		Maths = maths;
	}
	public int getScience() {
		return Science;
	}
	public void setScience(int science) {
		Science = science;
	}
	public int getSocial() {
		return Social;
	}
	public void setSocial(int social) {
		Social = social;
	}
	public studentmarks(String rollnumber, int telugu, int hindi, int english, int maths, int science, int social) {
		super();
		Rollnumber = rollnumber;
		Telugu = telugu;
		Hindi = hindi;
		English = english;
		Maths = maths;
		Science = science;
		Social = social;
	}
	public studentmarks() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
