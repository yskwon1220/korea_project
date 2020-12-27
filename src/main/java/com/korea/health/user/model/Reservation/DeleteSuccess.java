package com.korea.health.user.model.Reservation;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("reservationdeleteSuccess")
public class DeleteSuccess implements Action {

	@Resource
	ResMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		ReservationVO rvo = (ReservationVO)map.get("rvo");
		rvo.setLo_no(req.getParameter("lo_no")); 
		rvo.setUser_name(req.getParameter("user_id"));
		req.setAttribute("lo_no", (String)req.getParameter("lo_no"));
		req.setAttribute("user_id", (String)req.getParameter("user_id"));
		
		ResTimeVO timevo = (ResTimeVO)map.get("timevo");
		
		System.out.println("있으세요?"+timevo.getNowCnt());
		
		String resdateStr = req.getParameter("resdate");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy_M_d");
		Date resDate;
		
		try {
			resDate = sdf.parse(resdateStr);
			timevo.setResTime(req.getParameter("resTime")); 
			timevo.setResDate(resDate);
			req.setAttribute("resDate", timevo.getResDate());
			req.setAttribute("resTime", (String)req.getParameter("resTime"));
			System.out.println("타입확인 resDateStr : " + timevo.getResDateStr().getClass().getName());
			System.out.println("타입확인 resDate : " + timevo.getResDate().getClass().getName());
			System.out.println("타입확인 resTime : " + timevo.getResTime().getClass().getName());
			
			if(mapper.delete(rvo) != 0) {
				System.out.println(timevo);
				mapper.MinusCount(timevo);	
				//void MinusCount(ResTimeVO timevo);이거임.
			}
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}

}
