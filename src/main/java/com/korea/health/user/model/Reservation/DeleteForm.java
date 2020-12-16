package com.korea.health.user.model.Reservation;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("reservationdeleteForm")
public class DeleteForm implements Action {

	@Resource
	ResMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		//ReservationVO rvo = (ReservationVO) map.get("rvo");
		String user_name = req.getParameter("user_name");
		
		req.setAttribute("user_name", user_name);
		
		/* mapper.MyDetailList(rvo.re_no); */
		

		return null;
	}

}
