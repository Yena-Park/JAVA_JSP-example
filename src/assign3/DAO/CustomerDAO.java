package assign3.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

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
}
