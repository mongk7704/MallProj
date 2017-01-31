package com.proj.mall.Dto;

public class Purchaser {
	private String purchaserName;
	private String purchaserAddress;
	private int purchaserPhone;
	private String purchaserEmail;
	private int orderNumber;
	private int purchaserId;
	private int purchaserSeq;
	
	
	/**
	 * @param purchaserName
	 * @param purchaserAddress
	 * @param purchaserPhone
	 * @param purchaserEmail
	 * @param orderNumber
	 */
	public Purchaser(){}
	public Purchaser(String purchaserName, String purchaserAddress, int purchaserPhone, String purchaserEmail) {
		super();
		this.purchaserName = purchaserName;
		this.purchaserAddress = purchaserAddress;
		this.purchaserPhone = purchaserPhone;
		this.purchaserEmail = purchaserEmail;
		
	}
	
	public int getPurchaserId() {
		return purchaserId;
	}

	public void setPurchaserId(int purchaserId) {
		this.purchaserId = purchaserId;
	}

	public String getPurchaserName() {
		return purchaserName;
	}
	public void setPurchaserName(String purchaserName) {
		this.purchaserName = purchaserName;
	}
	public String getPurchaserAddress() {
		return purchaserAddress;
	}
	public void setPurchaserAddress(String purchaserAddress) {
		this.purchaserAddress = purchaserAddress;
	}
	public int getPurchaserPhone() {
		return purchaserPhone;
	}
	public void setPurchaserPhone(int purchaserPhone) {
		this.purchaserPhone = purchaserPhone;
	}
	public String getPurchaserEmail() {
		return purchaserEmail;
	}
	public void setPurchaserEmail(String purchaserEmail) {
		this.purchaserEmail = purchaserEmail;
	}
	public int getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(int orderNumber) {
		this.orderNumber = orderNumber;
	}
	public int getPurchaserSeq() {
		return purchaserSeq;
	}
	public void setPurchaserSeq(int purchaserSeq) {
		this.purchaserSeq = purchaserSeq;
	}
}
