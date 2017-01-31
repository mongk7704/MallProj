package com.proj.mall.Dto;

public class Member {
	private int memberId;
	private String email;
	private String password;
	private String name;
	private String address;
	private int phone;
	public Member() {
		
	}
	
	public int getMemberId() {
		return memberId;
	}

	

	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	
}
