package assign3.model;

import java.io.Serializable;

public class CSR implements Serializable {
	private String userName;
	private String passWord;
	private String firstName;
	private String lastName;
	public boolean valid;
	
	public CSR() {
		super();
	}

	public CSR(String userName, String passWord, String firstName, String lastName) {
		super();
		this.userName = userName;
		this.passWord = passWord;
		this.firstName = firstName;
		this.lastName = lastName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public boolean isValid() {
		return valid;
	}

    public void setValid(boolean newValid) {
    	valid = newValid;
	}	
}
