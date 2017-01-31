package com.proj.mall.Dto;

import java.sql.Date;

public class OrderInfo {
	private int orderNumber;
	private int purchaserId;
	private Date orderDate;
	private int purchaserSeq;
	private int totalfee;
	
	
	public OrderInfo(){}
	
	public int getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(int orderNumber) {
		this.orderNumber = orderNumber;
	}
	
	public int getPurchaserId() {
		return purchaserId;
	}
	public void setPurchaserId(int purchaserId) {
		this.purchaserId = purchaserId;
	}
	
	
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public int getPurchaserSeq() {
		return purchaserSeq;
	}
	public void setPurchaserSeq(int purchaserSeq) {
		this.purchaserSeq = purchaserSeq;
	}

	public int getTotalfee() {
		return totalfee;
	}

	public void setTotalfee(int totalfee) {
		this.totalfee = totalfee;
	}
	
}
