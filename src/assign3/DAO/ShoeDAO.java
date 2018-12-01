package assign3.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import assign3.model.Customer;
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
	
	public static int insertShoe(String itemName, String category,
			String shoeSize, int price) {
		String query = "INSERT INTO shoe (itemName, category, shoeSize, price)"
				+ " VALUES (?, ?, ?, ?)";
		
		int result = -1;
		try {
			con = DBConnector.getConnection();
			pst = con.prepareStatement(query);
			pst.setString(1, itemName);
			pst.setString(2, category);
			pst.setString(3, shoeSize);
			pst.setInt(4, price);
			result = pst.executeUpdate();
			pst.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public static Shoe getShoeById(int itemId) {
		Shoe shoe = null;
		String query = "SELECT * FROM SHOE where itemId = ?";    
		
		try {
			con = DBConnector.getConnection();
			pst = con.prepareStatement(query);
			pst.setInt(1, itemId);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				shoe = new Shoe(
					rs.getInt(1),
					rs.getString(2),
					rs.getString(3),
					rs.getString(4),
					rs.getInt(5)
				);
			}
			
			pst.close();
			con.close();
		} catch (Exception ex) {
			System.out.println("getShoeById failed: An Exception has occurred! " + ex);
		} 
		
		return shoe;
	}
	
	public static int updateShoeById(int itemId,
			String itemName, String category,
			String shoeSize, int price) {
		String query = "update shoe set itemName = ? ,"
				+ " category =?, "
				+ " shoeSize = ?,"
				+ " price = ?"
				+ " where itemId = ?";
		try {
			con = DBConnector.getConnection();
			pst = con.prepareStatement(query);
			
			pst.setString(1, itemName);
			pst.setString(2, category);
			pst.setString(3, shoeSize);
			pst.setInt(4, price);
			pst.setInt(5, itemId);
			pst.executeUpdate();
			
			pst.close();
			con.close();
		} catch (Exception ex) {
			System.out.println("updateShoeById failed: An Exception has occurred! " + ex);
		} 
		return itemId;
	}
	
	public static int deleteById(int itemId) {
		
		String query = "DELETE FROM SHOE where itemId = ?";
		
		try {
			con = DBConnector.getConnection();
			pst = con.prepareStatement(query);
			
			pst.setInt(1, itemId);
			pst.executeUpdate();
			
			pst.close();
			con.close();
		} catch (Exception ex) {
			System.out.println("delete failed: An Exception has occurred! " + ex);
		} 
		return itemId;
	}
}
