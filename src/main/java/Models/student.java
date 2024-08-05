package Models;

public class student {
	private String StudentName;
	private String RollNumber;
	private String Section;
	private String Branch;
	private String Email;
	private long PhoneNumber;
	private String DateOfBirth;
	private String Gender;
	private String FatherName;
	private String MotherName;
	private String Address;
	public String getStudentName() {
		return StudentName;
	}
	public void setStudentName(String studentName) {
		StudentName = studentName;
	}
	public String getRollNumber() {
		return RollNumber;
	}
	public void setRollNumber(String rollNumber) {
		RollNumber = rollNumber;
	}
	public String getSection() {
		return Section;
	}
	public void setSection(String section) {
		Section = section;
	}
	public String getBranch() {
		return Branch;
	}
	public void setBranch(String branch) {
		Branch = branch;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public long getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(long phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	public String getDateOfBirth() {
		return DateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		DateOfBirth = dateOfBirth;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getFatherName() {
		return FatherName;
	}
	public void setFatherName(String fatherName) {
		FatherName = fatherName;
	}
	public String getMotherName() {
		return MotherName;
	}
	public void setMotherName(String motherName) {
		MotherName = motherName;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public student(String studentName, String rollNumber, String section, String branch, String email, long phoneNumber,
			String dateOfBirth, String gender, String fatherName, String motherName, String address) {
		super();
		StudentName = studentName;
		RollNumber = rollNumber;
		Section = section;
		Branch = branch;
		Email = email;
		PhoneNumber = phoneNumber;
		DateOfBirth = dateOfBirth;
		Gender = gender;
		FatherName = fatherName;
		MotherName = motherName;
		Address = address;
	}
	public student() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
