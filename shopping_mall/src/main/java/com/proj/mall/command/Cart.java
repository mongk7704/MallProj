package com.proj.mall.command;

import java.util.ArrayList;
import java.util.ListIterator;

import com.proj.mall.Dto.Item;

public class Cart {
	private ArrayList<Item> itemlist;
	public ArrayList<Item> getItemlist() {
		return itemlist;
	}
	public Cart(){
		itemlist=new ArrayList<Item>();
	}
	public void insert(Item item){
		itemlist.add(item);
	}
	public int size(){
		int num=itemlist.size();
		
		return num;
	}
	public void print(){
		for(int i=0;i<itemlist.size();i++){
			System.out.println("type ="+itemlist.get(i).getType() + ",id =" + itemlist.get(i).getId());
		}
	}
	public Item getByIndex(int i){
		Item item=itemlist.get(i);
		return item;
	}
	public int totalFee(){
		int fee=0;
		for(int i=0;i<itemlist.size();i++)
			fee+=itemlist.get(i).getPrice();
		return fee;
		
	}
	public void removeByIndex(int i){
		itemlist.remove(i);
		
	}
	public void clear(){
		itemlist.clear();
	}
	public ListIterator<Item> list()
	{
		return itemlist.listIterator();
	}
}
