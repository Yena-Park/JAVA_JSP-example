package assign3.model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Shoe implements Serializable {
	private int itemId;
	private String itemName;
	private String category;
	private int shoeSize;
	private int price;

	public boolean isNew;
	
	public Shoe() {
		super();
		this.itemName = "";
		this.category = "";
	}

	public int getItemId() {
		return itemId;
	}

	public Shoe(int itemId, String itemName, String category, int shoeSize, int price) {
		super();
		this.itemId = itemId;
		this.itemName = itemName;
		this.category = category;
		this.shoeSize = shoeSize;
		this.price = price;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getShoeSize() {
		return shoeSize;
	}

	public void setShoeSize(int shoeSize) {
		this.shoeSize = shoeSize;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
