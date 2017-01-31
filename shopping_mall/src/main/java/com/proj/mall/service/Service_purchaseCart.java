package com.proj.mall.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallbackWithoutResult;
import org.springframework.transaction.support.TransactionTemplate;
import org.springframework.ui.Model;

import com.proj.mall.Dao.Dao;
import com.proj.mall.Dto.Member;
import com.proj.mall.Dto.OrderInfo;
import com.proj.mall.Dto.Purchaser;
import com.proj.mall.command.Cart;
import com.proj.mall.command.PurchaseCmd;
import com.proj.mall.util.Constant;

public class Service_purchaseCart implements Mservice {
	SqlSession sess=Constant.sess;
	int orderSeq,purSeq;
	ApplicationContext con=null;
	TransactionTemplate transactionTemplate;

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		con=new ClassPathXmlApplicationContext("classpath*:****/configuration1.xml");
		transactionTemplate=(TransactionTemplate) con.getBean("transactionTemplate");
		Map<String,Object> map=model.asMap();
		HttpServletRequest req=(HttpServletRequest) map.get("request");
		HttpSession session=req.getSession();
		final Cart cart=(Cart) session.getAttribute("cart");
	
		final String[] cartCk=req.getParameterValues("cartCk");	
		
		
		
		
		
		final PurchaseCmd cmd=(PurchaseCmd)map.get("cmd");
		Member mem=(Member)map.get("login");
		final Dao dao=sess.getMapper(Dao.class);
		final Purchaser puch=new Purchaser(cmd.getPurchaserName(),cmd.getPurchaserAddress(),cmd.getPurchaserPhone(),cmd.getPurchaserEmail());
		puch.setPurchaserId(mem.getMemberId());
		final OrderInfo order=new OrderInfo();
		order.setPurchaserId(mem.getMemberId());
		order.setTotalfee(cmd.getTotalMoney());
		
		final HashMap<String,Object> hmap=new HashMap<String,Object>();
	
		transactionTemplate.execute(new TransactionCallbackWithoutResult() {
			
			@Override
			protected void doInTransactionWithoutResult(TransactionStatus arg0) {
				// TODO Auto-generated method stub
				System.out.println("트랜잭션 테스트");
				
				hmap.put("purchaser", puch); // purchaser 테이블 insert
				dao.insertPurchaser( hmap);
				purSeq=(Integer) hmap.get("purchaserSeq");
				
				order.setPurchaserSeq(purSeq); // order 테이블 insert
				hmap.put("order",order);
				dao.insertOrder(hmap);
				orderSeq=(Integer) hmap.get("orderNumber");
				for(int i=0;i<cartCk.length;i++){
				int index=Integer.parseInt(cartCk[i]);	
				dao.insertOrderItem(orderSeq,cart.getByIndex(index).getType(),cart.getByIndex(index).getId(),1);
				}
				dao.insertReciever(cmd.getRecieverName(), cmd.getRecieverMessage(), cmd.getRecieverAddress(), cmd.getRecieverPhone(),orderSeq);
				
				dao.insertBank(cmd.getBtName(), cmd.getBtBank(), cmd.getBtAccountNum(), cmd.getTotalMoney(),orderSeq);
			}
		});
	
	}

}
