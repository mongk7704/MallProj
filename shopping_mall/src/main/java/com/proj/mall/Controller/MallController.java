package com.proj.mall.Controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.mall.Dao.Dao;
import com.proj.mall.Dto.Member;
import com.proj.mall.command.Cart;
import com.proj.mall.command.PurchaseCmd;
import com.proj.mall.service.Mservice;
import com.proj.mall.service.Service_cart;
import com.proj.mall.service.Service_item;
import com.proj.mall.service.Service_login;
import com.proj.mall.service.Service_mypage;
import com.proj.mall.service.Service_purchase;
import com.proj.mall.service.Service_purchaseCart;
import com.proj.mall.util.Constant;


@Controller
public class MallController {
	Dao dao;
	
	SqlSession sess;
	
	
	@Autowired
	public void setSess(SqlSession sess) {
		this.sess = sess;
		Constant.sess=this.sess;
	}
	
	Mservice service;
	


	@RequestMapping("main")
	public String main()
	{
		
		return "/view/main";
	}
	@RequestMapping("login")
	public String login(HttpServletRequest req,Model model)
	{
		return "/view/login";
	}
	@RequestMapping("resistration")
	public String resistration(HttpServletRequest req, Model model){
		return "/view/resistration";
	}
	@RequestMapping("Mypage")
	public String mypage(HttpServletRequest req,Model model)
	{
		model.addAttribute("request",req);
		service=new Service_mypage();
		service.execute(model);
		//return "redirect:main";
		return "/view/mypage";
	}
	@RequestMapping("logout")
	public String logout(HttpServletRequest req, Model model){
		HttpSession s=req.getSession();
		s.invalidate();
		return "redirect:main";
	}
	@RequestMapping("member_action")
	public String member(Member member){
		dao=sess.getMapper(Dao.class);
		//System.out.println(member.getName());
		dao.insertMember(member.getEmail(),member.getPassword(),member.getName(),member.getAddress(),member.getPhone());
		return "redirect:main";
	}
	@RequestMapping("login_action")
	public String login_action(HttpServletRequest req,Model model){
		service=new Service_login();

		model.addAttribute("request",req);
		service.execute(model);
		Map<String, Object> map=model.asMap();
		String result=(String)map.get("result");
		Member login=(Member)map.get("login");
		if(result.equals("success"))
		{
			HttpSession s=req.getSession();
			s.setAttribute("login", login);
			
			return "redirect:main";
		}
		else
			return "redirect:login";
	}
	
	@RequestMapping("list")
	public String list(HttpServletRequest req,Model model){
		
		
		return "/view/list";
	}
	@RequestMapping("details")
	public String details(HttpServletRequest req,Model model){
		service=new Service_item();
		model.addAttribute("request",req);
		service.execute(model);
		
		return "/view/details";		
	}
	@RequestMapping("purchase")
	public String purchase(HttpServletRequest req,Model model){
		
//		service=new Service_cart();
//		HttpSession sess=req.getSession();
//		model.addAttribute("session",sess);
//		model.addAttribute("request",req);
//		service.execute(model);
		model.addAttribute("request",req);
		if(req.getParameter("method").equals("cart")){
			
		}
		else
		{
		service=new Service_item();
		service.execute(model);
		}
		return "/view/purchase";
	}
	
	@RequestMapping("cartorder")
	public String cartorder(HttpServletRequest req,Model model){
		HttpSession sess=req.getSession();
		int j=0,k=0;
		Cart cart=(Cart)sess.getAttribute("cart");
		Cart cart2=new Cart();
		int size=cart.size();
		String[] cartCk=req.getParameterValues("cartCk");
		
		if(req.getParameter("total").equals("true"))
			return "/view/purchase";
		if(cart.size()==cartCk.length)
			return "/view/purchase";
		for(int i=0;i<=size;i++)
		{	
			if(j>=cartCk.length)
				break;
			if(i==Integer.parseInt(cartCk[j])){
				cart2.insert(cart.getByIndex(i));
				j++;
			}
			
		}
		sess.setAttribute("cart", cart2);
		return "/view/purchase";
	}
	
	@RequestMapping("cart")
	public String cart(HttpServletRequest req,Model model){
		service=new Service_cart();
		HttpSession sess=req.getSession();
		model.addAttribute("session",sess);
		model.addAttribute("request",req);
		service.execute(model);
		req.setAttribute("type", req.getParameter("type"));
		req.setAttribute("id", req.getParameter("id"));
		
		return "/view/details";
		//return "redirect:main";
		//return "/view/cart";
	}
	@RequestMapping("cartlist")
	public String puchase_confirm( HttpServletRequest req,Model model){
		
		return "/view/cartlist";
	} 
	@RequestMapping("ordercancel")
	public String ordercancel( HttpServletRequest req,Model model){
		
		Dao dao=Constant.sess.getMapper(Dao.class);
		dao.deleteOrderItem(Integer.parseInt(req.getParameter("id")));
		return "redirect:Mypage";
	} 
	@RequestMapping("cartoption")
	public String cartoption( HttpServletRequest req,Model model){
		
		HttpSession sess=req.getSession();
		Cart cart=(Cart)sess.getAttribute("cart");
		
		String[] cartCk=req.getParameterValues("cartCk");
		int j=0;
		int size=cart.size();
		//System.out.println("cart size:"+cart.size());
		//ystem.out.println("ck len:"+cartCk.length);
		if(req.getParameter("option").equals("select")){
			for(int i=0;i<size;i++){
				if(j>=cartCk.length)
					break;
				if(i==Integer.parseInt(cartCk[j]))
					{
					cart.removeByIndex(i-j);
					j++;
					}		
			}	
		}
		else{
			cart.clear();
		}
		
		
		return "redirect:cartlist";
	} 
	@RequestMapping("purchase_cart")
	public String purchase_cart(@ModelAttribute PurchaseCmd cmd, HttpServletRequest req,Model model)
	{
		HttpSession sess=req.getSession();
		service=new Service_purchaseCart();
		
		model.addAttribute("login", sess.getAttribute("login"));
		model.addAttribute("cmd",cmd);
		model.addAttribute("request",req);
		service.execute(model);
		System.out.println("cart!!!!");
		return "redirect:main";
	}
	
	@RequestMapping("purchase_confirm")
	public String puchase_confirm(@ModelAttribute PurchaseCmd cmd, HttpServletRequest req,Model model){
		HttpSession sess=req.getSession();
		service=new Service_purchase();
		model.addAttribute("login", sess.getAttribute("login"));
		model.addAttribute("cmd",cmd);
		service.execute(model);
		return "redirect:main";
	} 
}
