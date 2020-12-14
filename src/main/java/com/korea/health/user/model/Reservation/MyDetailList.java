package com.korea.health.user.model.Reservation;

import java.util.Date;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("reservationmyDetailList")
public class MyDetailList implements Action {

	@Resource
	ResMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		ReservationVO rvo = (ReservationVO)map.get("rvo");
		
		/*
		 * rvo.setRe_no((String)req.getParameter("re_no"));
		 * rvo.setLo_name((String)req.getParameter("lo_name"));
		 * 
		 * System.out.println((String)req.getParameter("re_no") + rvo.re_no +
		 * rvo.lo_name + rvo.lo_no + rvo.user_name);
		 */
		
		return mapper.MyDetailList(rvo.re_no);

	}

}
