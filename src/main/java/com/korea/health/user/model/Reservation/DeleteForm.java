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
		//System.out.println("계세요?"+ req.getParameter("resDate"));
		System.out.println("계세요?"+ req.getParameter("resdate"));
		System.out.println("계세요?"+ req.getParameter("resTime"));
		//System.out.println("계세요?"+ req.getParameter("resdate"));
		
		
		req.setAttribute("user_name", user_name);
		req.setAttribute("resdate", req.getParameter("resdate"));
		req.setAttribute("resTime", req.getParameter("resTime"));
		
		/* mapper.MyDetailList(rvo.re_no); */
		

		return null;
	}

}
