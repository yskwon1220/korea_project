package com.korea.health.service;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.event.EventMapper;

@Service("payment")
public class PaymentService implements Action {

	@Resource
	EventMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		String user_ss = (String)map.get("user_ss");
		
		switch ((String)map.get("service")) {

		case "payment":
			return mapper.user_serch(user_ss);
		case "successpay":			
			return mapper.user_serch(user_ss);
		case "cardpay":
			return mapper.user_serch(user_ss);
		case "cardpay2":
			return mapper.user_serch(user_ss);
		}
		return null;

}





}
