package assign3.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import assign3.other.DBConnector;

public class CSRDAO {
	static Connection con;
	static PreparedStatement pst;
	
	//add CSR row
	public int addCSRRow(String userName, String passWord, String firstName, String lastName) {
		String query = "INSERT INTO CSR (userName, passWord, firstName, lastName)"
				+ "VALUES(?, ?, ?, ?)";
		int result = -1;
		try {
			con = DBConnector.getConnection();
			pst = con.prepareStatement(query);
			pst.setString(1, userName);
			pst.setString(2, passWord);
			pst.setString(3, firstName);
			pst.setString(4, lastName);
			result = pst.executeUpdate();
			pst.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
