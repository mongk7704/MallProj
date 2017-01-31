package com.proj.mall.Dto;

public class Reciever {
	
	private String recieverAddress;
	private int recieverPhone;
	private String recieverMessage;
	private int orderNumber;
	private String recieverName;
	private int recieverId;
	
	/**
	 * @param recieverAddress
	 * @param recieverPhone
	 * @param recieverMessage
	 * @param orderNumber
	 * @param recieverName
	 */
	public Reciever(String recieverAddress, int recieverPhone, String recieverMessage,
			String recieverName) {
		super();
		this.recieverAddress = recieverAddress;
		this.recieverPhone = recieverPhone;
		this.recieverMessage = recieverMessage;
		this.recieverName = recieverName;
	}
	public String getRecieverAddress() {
		return recieverAddress;
	}
	public void setRecieverAddress(String recieverAddress) {
		this.recieverAddress = recieverAddress;
	}
	public int getRecieverPhone() {
		return recieverPhone;
	}
	public void setRecieverPhone(int recieverPhone) {
		this.recieverPhone = recieverPhone;
	}
	public String getRecieverMessage() {
		return recieverMessage;
	}
	public void setRecieverMessage(String recieverMessage) {
		this.recieverMessage = recieverMessage;
	}
	public int getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(int orderNumber) {
		this.orderNumber = orderNumber;
	}
	public String getRecieverName() {
		return recieverName;
	}
	public void setRecieverName(String recieverName) {
		this.recieverName = recieverName;
	}
	public int getRecieverId() {
		return recieverId;
	}
	public void setRecieverId(int recieverId) {
		this.recieverId = recieverId;
	}
	
	
	
}
