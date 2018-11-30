package assign3.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import assign3.model.Customer;
import assign3.other.DBConnector;

public class CustomerDAO {
	static Connection con;
	static PreparedStatement pst;
	
	//add customer row
	public int addCustomerRow(String userName, String passWord, String firstName, String lastName, String address, String city, String postalCode) {
		String query = "INSERT INTO CUSTOMER (userName, passWord, firstName, lastName, address, city, postalCode)"
				+ "VALUES(?, ?, ?, ?, ?, ?, ?)";
		int result = -1;
		try {
			con = DBConnector.getConnection();
			pst = con.prepareStatement(query);
			pst.setString(1, userName);
			pst.setString(2, passWord);
			pst.setString(3, firstName);
			pst.setString(4, lastName);
			pst.setString(5, address);
			pst.setString(6, city);
			pst.setString(7, postalCode);
			result = pst.executeUpdate();
			pst.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public static Customer login(String userId, String passWord) {
		Customer customer = new Customer();
		String query = "SELECT * FROM CUSTOMER WHERE userName = ? AND passWord = ?";    
		
		try {
			con = DBConnector.getConnection();
			pst = con.prepareStatement(query);
			pst.setString(1, userId);
			pst.setString(2, passWord);
			ResultSet rs = pst.executeQuery();
			if(rs.next())  {
				customer = new Customer(
					rs.getInt(1),
					rs.getString(2),
					rs.getString(3),
					rs.getString(4),
					rs.getString(5),
					rs.getString(6),
					rs.getString(7),
					rs.getString(8)
				);
				customer.setValid(true);
			} else {
				customer.setValid(false);
			}
			pst.close();
			con.close();
		} catch (Exception ex) {
			System.out.println("Log In failed: An Exception has occurred! " + ex);
		} 
		
		return customer;
	}
	
	public static List<Customer> getAll() {
		List<Customer> customers = new ArrayList<Customer>();
		String query = "SELECT * FROM CUSTOMER";    
		
		try {
			con = DBConnector.getConnection();
			pst = con.prepareStatement(query);
			ResultSet rs = pst.executeQuery();
			while(rs.next())  {
				Customer customer = new Customer(
					rs.getInt(1),
					rs.getString(2),
					rs.getString(3),
					rs.getString(4),
					rs.getString(5),
					rs.getString(6),
					rs.getString(7),
					rs.getString(8)
				);
				customers.add(customer);
			}
			pst.close();
			con.close();
		} catch (Exception ex) {
			System.out.println("Log In failed: An Exception has occurred! " + ex);
		} 
		
		return customers;
	}
}
