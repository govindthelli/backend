package Models;

public class Registration {
	
	private String FirstName;
	private String LastName;
	private String Email;
	private String password;
	private String confirm_password;
	private long Phoneno;
	private String DateOfBirth;
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirm_password() {
		return confirm_password;
	}
	public void setConfirm_password(String confirm_password) {
		this.confirm_password = confirm_password;
	}
	public long getPhoneno() {
		return Phoneno;
	}
	public void setPhoneno(long phoneno) {
		Phoneno = phoneno;
	}
	public String getDateOfBirth() {
		return DateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		DateOfBirth = dateOfBirth;
	}
	public Registration(String firstName, String lastName, String email, String password, String confirm_password,
			long phoneno, String dateOfBirth) {
		super();
		FirstName = firstName;
		LastName = lastName;
		Email = email;
		this.password = password;
		this.confirm_password = confirm_password;
		Phoneno = phoneno;
		DateOfBirth = dateOfBirth;
	}
	public Registration() {
		super();
	}
	
	
}
