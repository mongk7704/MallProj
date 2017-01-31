package com.proj.mall.Dto;

public class Orderitem {
	private int orderItemId;
	private int orderNumber;
	private String itemType;
	private String itemId;
	private int itemAccount;
	public int getOrderItemId() {
		return orderItemId;
	}
	public void setOrderItemId(int orderItemId) {
		this.orderItemId = orderItemId;
	}
	public int getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(int orderNumber) {
		this.orderNumber = orderNumber;
	}
	public String getItemType() {
		return itemType;
	}
	public void setItemType(String itemType) {
		this.itemType = itemType;
	}
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	public int getItemAccount() {
		return itemAccount;
	}
	public void setItemAccount(int itemAccount) {
		this.itemAccount = itemAccount;
	}
	
}
