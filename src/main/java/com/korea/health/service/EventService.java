package com.korea.health.service;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.event.EventMapper;
import com.korea.health.user.model.payment.Payment_List;

@Service("event")
public class EventService implements Action {

	@Resource
	EventMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		String e_no = (String) map.get("event_no");
		Payment_List pl = (Payment_List) map.get("pl");
		String user_ss = (String) req.getSession().getAttribute("user_id");
		String ticket = (String) req.getAttribute("ticket");
		switch ((String) map.get("service")) {
		case "event_page":
			return mapper.list();
		case "event_detail":
			return mapper.event2(e_no);
		case "payment_list":

			if (pl.getSel_no()!=null) {
				String pay_no = String.valueOf(pl.getSel_no());
				pl = mapper.payList(pay_no);
				pl.setUser_id(user_ss);
				pl.setPayment_no(pay_no);
				mapper.clearCnt(pl);
				mapper.payment_refund_point(user_ss, pay_no);
				mapper.payment_del(pl);
				mapper.newNum(pl);
				mapper.paymentResult_del(pl);
				mapper.newNum2(pl);
				mapper.branchPayDel(pl);
				
			}

			return mapper.payment_sel(user_ss);
		}
		return null;

	}

}
