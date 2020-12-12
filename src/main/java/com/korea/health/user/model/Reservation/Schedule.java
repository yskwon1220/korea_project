package com.korea.health.user.model.Reservation;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;



@Service("reservationschedule")
public class Schedule implements Action{
	
	@Resource
	ResMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		
		req.setAttribute("lo_no", (String)req.getParameter("lo_no"));
		req.setAttribute("lo_name", (String)req.getParameter("lo_name"));
		req.setAttribute("tr_name", (String)req.getParameter("tr_name"));
		req.setAttribute("type", (String)req.getParameter("type"));
		
		ReservationVO rvo = new ReservationVO();
		
		rvo.setLo_no(req.getParameter("lo_no")); 
		rvo.setLo_name(req.getParameter("lo_name"));
		rvo.setTr_name(req.getParameter("tr_name"));
		rvo.setType(req.getParameter("type"));
		rvo.setUser_name(req.getParameter("user_name"));
		rvo.setUser_pw(req.getParameter("user_pw"));
		rvo.setUser_tel(req.getParameter("user_tel"));
		rvo.setContent(req.getParameter("content"));
		rvo.setRestime(req.getParameter("restime"));
		rvo.setRestime(req.getParameter("resdate"));
		
		return null;
	}

}
