package assign3.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import assign3.model.CSR;
import assign3.others.DBConnector;

public class CsrDAO {
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
	
	public static CSR login(String userId, String password) {
	    //preparing some objects for connection 
		String query = "SELECT * FROM CSR WHERE userName = ? AND passWord = ?";    
		CSR csr = new CSR();
		try {
			con = DBConnector.getConnection();
			pst = con.prepareStatement(query);
			pst.setString(1, userId);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();
			if(rs.next())  {
				csr = new CSR(
					rs.getString(2),
					rs.getString(3),
					rs.getString(4),
					rs.getString(5)
				);
				csr.setValid(true);
			} else {
				csr.setValid(false);
			}
			pst.close();
			con.close();
		} catch (Exception ex) {
			System.out.println("Log In failed: An Exception has occurred! " + ex);
		} 
		
		return csr;
	}
}
