package com.proj.mall.Dto;

public class BankTransfer {
	private int btId;
	private int orderNumber;
	private String btName;
	private String btBank;
	private String btAccountNum;
	private int totalMoney;
	
	
	
	
	public String getBtAccountNum() {
		return btAccountNum;
	}
	public void setBtAccountNum(String btAccountNum) {
		this.btAccountNum = btAccountNum;
	}
	public int getBtId() {
		return btId;
	}
	public void setBtId(int btId) {
		this.btId = btId;
	}
	
	public int getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(int orderNumber) {
		this.orderNumber = orderNumber;
	}
	public String getBtName() {
		return btName;
	}
	public void setBtName(String btName) {
		this.btName = btName;
	}
	public String getBtBank() {
		return btBank;
	}
	public void setBtBank(String btBank) {
		this.btBank = btBank;
	}
	
	public int getTotalMoney() {
		return totalMoney;
	}
	public void setTotalMoney(int totalMoney) {
		this.totalMoney = totalMoney;
	}
	
	
}
