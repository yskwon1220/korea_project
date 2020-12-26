package com.korea.health.service;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.event.EventMapper;
import com.korea.health.user.model.payment.CardVO2;
import com.korea.health.user.model.payment.Payment_List;


@Service("payment")
public class PaymentService implements Action {

	@Resource
	EventMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		String user_ss = (String)req.getSession().getAttribute("user_id");
		
		CardVO2 vo2 = (CardVO2)map.get("vo2");
		Payment_List pl = (Payment_List)map.get("pl");
		vo2.setTicket(req.getParameter("ticket"));
		String coupon_no = vo2.getCoupon_no();
		Integer save_point = vo2.getSave_point();
		
		switch ((String)map.get("service")) {
		case "payment":
			System.out.println(user_ss);
			return mapper.user_serch(user_ss);
			
		case "successpay":	
			if(!vo2.getCard_main_num1().equals(null))
				System.out.println("pay_info 실행");
				mapper.payment_info(vo2,user_ss);
				mapper.payment_result(vo2, user_ss);
				mapper.userCntAdd(vo2,user_ss);
				mapper.branchPayAdd(vo2, user_ss);

				if(!vo2.getCoupon_no().equals(null))
				mapper.coupon_delete(user_ss, coupon_no);
			
			if(!vo2.getSave_point().equals(null))
				mapper.save_up(user_ss,save_point);
				
			return mapper.user_serch(user_ss);
			
		case "cardpay":
			return mapper.user_serch(user_ss);
			
		case "cardpay2":
			return mapper.user_serch(user_ss);
		
		
		 
		}
		return null;

}





}
