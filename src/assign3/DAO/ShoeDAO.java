package assign3.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import assign3.model.Shoe;
import assign3.others.DBConnector;

public class ShoeDAO {
	static Connection con;
	static PreparedStatement pst;
	
	//add customer row
	public static List<Shoe> getAll(){
		String query = "Select * from shoe";
		
		List<Shoe> shoes = new ArrayList<Shoe>();
		try {
			con = DBConnector.getConnection();
			pst = con.prepareStatement(query);
			
			ResultSet rs = pst.executeQuery();
			while(rs.next())  {
				Shoe shoe = new Shoe(
					rs.getInt(1),
					rs.getString(2),
					rs.getString(3),
					rs.getString(4),
					rs.getInt(5)
				);
				shoes.add(shoe);
			}
			pst.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return shoes;
	}
}
