package com.korea.health.user.model.Reservation;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;



@Service("reservationinsertForm")
public class InsertForm implements Action{
	
	@Resource
	ResMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		ReservationVO rvo = new ReservationVO();
		
		String lo_no = (String)req.getParameter("lo_no");
		req.setAttribute("lo_no", lo_no);
		req.setAttribute("lo_name", (String)req.getParameter("lo_name"));
		req.setAttribute("tr_name", (String)req.getParameter("tr_name"));
		req.setAttribute("type", (String)req.getParameter("type"));
		req.setAttribute("resTime", (String)req.getParameter("resTime"));
		req.setAttribute("resDate", (String)req.getParameter("resDate"));
		req.setAttribute("resDateStr", (String)req.getParameter("resDateStr"));
		req.setAttribute("date_str", (String)req.getParameter("date_str"));
		req.setAttribute("days", (String)req.getParameter("days"));
		req.setAttribute("ee", (String)req.getParameter("ee"));
		
		ResTimeVO timevo = new ResTimeVO();
//		timevo.setResDateStr(req.getParameter("resDate"));
//		timevo.setResDateStr(req.getParameter("resDateStr"));
		System.out.println("값가져왔니?:"+timevo.getResDate());
		
		System.out.println("days :" + (String)req.getParameter("days"));
		System.out.println("date_str : " + (String)req.getParameter("date_str"));
		System.out.println("resDateStr : " + (String)req.getParameter("resDateStr"));
		System.out.println("resDate : " + (String)req.getParameter("resDate"));
		System.out.println("resTime : " + (String)req.getParameter("resTime"));
		

		return null;
	}

}
