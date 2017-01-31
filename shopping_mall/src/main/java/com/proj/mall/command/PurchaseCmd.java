package com.proj.mall.command;

import com.proj.mall.Dto.OrderInfo;

public class PurchaseCmd {
	private String purchaserName;
	private String purchaserAddress;
	private int purchaserPhone;
	private String purchaserEmail;
	private String recieverName;
	private String recieverAddress;
	private int recieverPhone;
	private String recieverMessage;
	private String btName;
	private String btBank;
	private String btAccountNum;
	private String itemId;
	private String itemType;
	private int totalMoney;
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
	
	public String getRecieverName() {
		return recieverName;
	}
	public void setRecieverName(String recieverName) {
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
	 
	
	
	public String getBtAccountNum() {
		return btAccountNum;
	}
	public void setBtAccountNum(String btAccountNum) {
		this.btAccountNum = btAccountNum;
	}
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	public String getItemType() {
		return itemType;
	}
	public void setItemType(String itemType) {
		this.itemType = itemType;
	}
	public int getTotalMoney() {
		return totalMoney;
	}
	public void setTotalMoney(int totalMoney) {
		this.totalMoney = totalMoney;
	}
//	public OrderInfo order(){
//				 
//		OrderInfo order=new OrderInfo(itemType,itemId);
//		return order;
//		
//	}
//	public Reciever reciever(){
//		Reciever rec=new Reciever(recieverAddress, recieverPhone,  recieverMessage,
//				recieverName);
//		return rec;
//		
//	}
//	public Purchaser purchaser(){
//		Purchaser pur=new Purchaser(purchaserName,  purchaserAddress, purchaserPhone,  purchaserEmail);
//		return pur;
//		
//	}
//	
//	public BankTransfer btTransfer(){
//		BankTransfer bt=new BankTransfer(btName, btBank, btAccountNum, totalMoney);
//		return bt;
//		
//	}
}