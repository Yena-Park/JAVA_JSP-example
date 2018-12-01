package assign3.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import assign3.model.Order;
import assign3.others.DBConnector;

public class OrderDAO {
	static Connection con;
	static PreparedStatement pst;
	
	//add customer row
	public static List<Order> getOrdersByCustomerId(int customerId) {
		String query = "select * from orders where customerId = ?";
		
		List<Order> orders = new ArrayList<Order>();
		try {
			con = DBConnector.getConnection();
			pst = con.prepareStatement(query);
			pst.setInt(1, customerId);
			
			ResultSet rs = pst.executeQuery();
			while(rs.next())  {
				Order order = new Order(
					rs.getInt(1),
					rs.getInt(2),
					rs.getInt(3),
					rs.getDate(4),
					rs.getInt(5),
					rs.getString(6)
				);
				orders.add(order);
			}
			pst.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return orders;
	}
	
	public static Order getOrderById(int orderId) {
		String query = "Select * from order where orderId = ?";
		Order order = null;
		try {
			con = DBConnector.getConnection();
			pst = con.prepareStatement(query);
			pst.setInt(1, orderId);
			
			ResultSet rs = pst.executeQuery();
			if(rs.next())  {
				order = new Order(
					rs.getInt(1),
					rs.getInt(2),
					rs.getInt(3),
					rs.getDate(4),
					rs.getInt(5),
					rs.getString(6)
				);
			}
			pst.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return order;
	}
	
}
