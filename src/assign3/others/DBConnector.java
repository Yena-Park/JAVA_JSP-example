package assign3.others;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnector {

	private static final String url="jdbc:mysql://localhost:3306/MVCDB";
//	private static final String DriverClass = "com.mysql.jdbc.Driver";
	private static final String user= "root";
	private static final String password= "rootroot";
	
//	private DBConnector() {
//		try {
////			Class.forName("com.mysql.jdbc.Driver");
//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
//		}
//	}
	
	public static Connection getConnection() throws Exception {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			System.out.println("Error: Connection failed" + e.getMessage());
		}
		return connection;
	}
	
	public static void closeConnection(Connection con, Statement st, ResultSet rs) throws Exception {
	if(con!=null)
		con.close();
	if(st!=null)
		st.close();
	if(rs!=null)
		rs.close();
	}
}
