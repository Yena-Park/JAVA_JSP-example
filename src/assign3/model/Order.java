package assign3.model;

import java.io.Serializable;
import java.sql.Date;

public class Order implements Serializable {
	private int orderId;
	private int customerId;
	private int itemId;
	private Date orderDate;
	private int quantity;
	private String status;
	
	public Order() {
		super();
	}

	public Order(int orderId, int customerId, int itemId, Date orderDate, int quantity, String status) {
		super();
		this.orderId = orderId;
		this.customerId = customerId;
		this.itemId = itemId;
		this.orderDate = orderDate;
		this.quantity = quantity;
		this.status = status;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
