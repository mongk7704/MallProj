package com.proj.mall.Dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.proj.mall.Dto.Item;
import com.proj.mall.Dto.Member;

public interface Dao {
	public void insertMember(String email,String password,String name,String address,int phone);
	public void insertPurchaser(HashMap<String,Object> map);
	public void insertOrder(HashMap<String,Object> map);
	public void insertOrderItem(int orderNumber,String itemType,String itemId,int itemAccount);
	public void insertReciever(String recievername,String recievermessage,String recieveraddress,int recieverphone,int seq);
	public void insertBank(String btname,String btbank,String btaccountnum,int totalmoney,int seq);
	public Member selectLogin(String email);
	public Item selectItem(String type,String id);
	public Integer selectId(String address);
	public ArrayList<HashMap<String,Object>> selectOrder(int pid);
	public ArrayList<HashMap<String,Object>> selectOrderItem(int onum);
	public void deleteOrderItem(int id);
}
