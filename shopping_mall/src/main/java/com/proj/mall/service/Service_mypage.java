package com.proj.mall.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.context.ApplicationContext;
import org.springframework.transaction.support.TransactionTemplate;
import org.springframework.ui.Model;

import com.proj.mall.Dao.Dao;
import com.proj.mall.Dto.Item;
import com.proj.mall.Dto.Member;
import com.proj.mall.Dto.Orderitem;
import com.proj.mall.util.Constant;

public class Service_mypage implements Mservice {
	SqlSession sess=Constant.sess;
	ApplicationContext con=null;
	Integer pid,ordernumber;
	ArrayList<Integer> onumbers=null;
	ArrayList<Item> items=null;
	ArrayList<HashMap<String,Object>> itemList=null;
	TransactionTemplate transactionTemplate;
	ArrayList<HashMap<String,Object>> maplist=null;
	ArrayList<Orderitem> myItem=new ArrayList<Orderitem>();
	Map<String,Object> hmap=new HashMap<String,Object>();
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		Map<String,Object> map=model.asMap();
		HttpServletRequest req= (HttpServletRequest) map.get("request");
		HttpSession session= req.getSession();
		Member mem=(Member) session.getAttribute("login");
		String address=mem.getAddress();
		Dao dao=sess.getMapper(Dao.class);
		pid=dao.selectId(address);
		maplist=dao.selectOrder(pid);
		
		if(maplist==null)
			return;
		for(int i=0;i<maplist.size();i++){
			
			itemList=dao.selectOrderItem((Integer) maplist.get(i).get("ordernumber"));
			for(int j=0; j<itemList.size();j++){
				Orderitem orderitem=new Orderitem();
				Item item=dao.selectItem((String)itemList.get(j).get("itemtype"), (String)itemList.get(j).get("itemid"));
				orderitem.setOrderDate((Date) maplist.get(i).get("orderdate"));
				orderitem.setOrderNumber((Integer) maplist.get(i).get("ordernumber"));
				orderitem.setItem(item);
				myItem.add(orderitem);
				
				System.out.println("onum :"+orderitem.getOrderNumber());
				System.out.println("itemtype :"+orderitem.getItem().getType());
				
			}
			
		}
		model.addAttribute("myItem",myItem);
		
	}

}
