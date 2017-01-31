package com.proj.mall.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallbackWithoutResult;
import org.springframework.transaction.support.TransactionTemplate;
import org.springframework.ui.Model;

import com.proj.mall.Dao.Dao;
import com.proj.mall.Dto.Member;
import com.proj.mall.util.Constant;

public class Service_login implements Mservice {
	
	SqlSession sess=Constant.sess;
	String password=null;
	
	
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		
		Map<String,Object> map=model.asMap();
		HttpServletRequest req= (HttpServletRequest)map.get("request");
		String email=req.getParameter("email");
		String passwordck=req.getParameter("password");
		Dao dao=sess.getMapper(Dao.class);
		
		Member login=(Member)dao.selectLogin(email);
		if(login!=null)
			password=login.getPassword();
		if(password==null)
			model.addAttribute("result","empty");
		else if(!password.equals(passwordck))
			model.addAttribute("result","wrong");
		else{
			
			model.addAttribute("result","success");
			model.addAttribute("login",login);
		}
			
		
	}

}
