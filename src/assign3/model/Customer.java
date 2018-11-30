package assign3.model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Customer implements Serializable {
	private int customerId;
	private String userName;
	private String passWord;
	private String firstName;
	private String lastName;
	private String address;
	private String city;
	private String postalCode;
	public boolean valid;
	
	public Customer(int customerId, String userName, String passWord, String firstName, String lastName, String address, String city,
			String postalCode) {
		super();
		this.customerId = customerId;
		this.userName = userName;
		this.passWord = passWord;
		this.firstName = firstName;
		this.lastName = lastName;
		this.address = address;
		this.city = city;
		this.postalCode = postalCode;
	}

	public Customer() {
		super();
	}
	

	public int getCustomerId() {
		return customerId;
	}


	public void setCustomerId(int customerId) {
		this.customerId = customerId;
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


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getPostalCode() {
		return postalCode;
	}


	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}
	

	public boolean isValid() {
		return valid;
	}

    public void setValid(boolean newValid) {
    	valid = newValid;
	}	
}
