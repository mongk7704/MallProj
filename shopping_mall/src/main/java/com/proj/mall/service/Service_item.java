package com.proj.mall.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.proj.mall.Dao.Dao;
import com.proj.mall.Dto.Item;
import com.proj.mall.util.Constant;

public class Service_item implements Mservice {
	SqlSession sess=Constant.sess;
	
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		Map<String,Object> map=model.asMap();
		HttpServletRequest req = (HttpServletRequest)map.get("request");
		String type=req.getParameter("type");
		String id=req.getParameter("id");
		System.out.println("service_item_type:"+type);
		Dao dao=sess.getMapper(Dao.class);
		Item item=(Item)dao.selectItem(type,id);
		//System.out.println(item.getType());
		model.addAttribute("item",item);
	}

}
