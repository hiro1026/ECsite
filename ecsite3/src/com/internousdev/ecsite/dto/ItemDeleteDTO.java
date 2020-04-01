package com.internousdev.ecsite.dto;

public class ItemDeleteDTO {
	private String ItemName;
	private String ItemPrice;
	private String ItemStock;
	private String Id;
	private String insert_date;

	public String getItemName() {
		return ItemName;
	}
	public void setItemName(String ItemName) {
		this.ItemName = ItemName;
	}
	public String getItemPrice() {
		return ItemPrice;
	}
	public void setItemPrice(String ItemPrice) {
		this.ItemPrice = ItemPrice;
	}
	public String getItemStock() {
		return ItemStock;
	}
	public void setItemStock(String ItemStock) {
		this.ItemStock = ItemStock;
	}
	public String getId() {
		return Id;
	}
	public void setId(String Id) {
		this.Id = Id;
	}
	public String getInsert_date() {
		return insert_date;
	}
	public void setInsert_date(String insert_date) {
		this.insert_date = insert_date;
	}

}
