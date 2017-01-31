package com.proj.mall.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.proj.mall.Dto.Item;
import com.proj.mall.command.Cart;

public class Service_cart implements Mservice {
	private Item item;
	Mservice service;
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
	service=new Service_item();
	service.execute(model);
	Map<String,Object> map=model.asMap();
	Cart cart;
	
	item=(Item) map.get("item");
	HttpSession sess=(HttpSession) map.get("session");
	if(sess.getAttribute("cart")==null){
		cart=new Cart();
		cart.insert(item);
		sess.setAttribute("cart", cart);
		cart.print();
	}
	else
	{
		cart=(Cart) sess.getAttribute("cart");
		cart.insert(item);
		sess.setAttribute("cart", cart);
		
		cart.print();
	}
	
	}

}
