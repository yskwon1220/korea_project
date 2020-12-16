package com.korea.health.user.model.Reservation;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;



@Service("reservationsuccess")
public class Success implements Action{
	
	@Resource
	ResMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
//		ReservationVO resVO = (ReservationVO)map.get("rvo");

		//mapper.insert(resVO);
		
//		ReservationVO rvo = new ReservationVO();
		
//		rvo.setLo_no(req.getParameter("lo_no")); 
//		rvo.setLo_name(req.getParameter("lo_name"));
//		rvo.setTr_name(req.getParameter("tr_name"));
//		rvo.setType(req.getParameter("type"));
//		rvo.setUser_name(req.getParameter("user_name"));
//		rvo.setUser_pw(req.getParameter("user_pw"));
//		rvo.setUser_tel(req.getParameter("user_tel"));
//		rvo.setContent(req.getParameter("content"));
//
//		
//		req.setAttribute("lo_no", (String)req.getParameter("lo_no"));
//		req.setAttribute("lo_name", (String)req.getParameter("lo_name"));
//		req.setAttribute("tr_name", (String)req.getParameter("tr_name"));
//		req.setAttribute("type", (String)req.getParameter("type"));
//		req.setAttribute("user_name", (String)req.getParameter("user_name"));
//		req.setAttribute("user_pw", (String)req.getParameter("user_pw"));
//		req.setAttribute("user_tel", (String)req.getParameter("user_tel"));
//		req.setAttribute("content", (String)req.getParameter("content"));
//		req.setAttribute("resTime", (String)req.getParameter("resTime"));
//		req.setAttribute("resdate", (String)req.getParameter("resdate"));
		
		
		String resdateStr = req.getParameter("resdate");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy_M_d");
		Date resdate;
		try {
			ReservationVO rvo = (ReservationVO)map.get("rvo");
			mapper.insert(rvo);
			
			
			
			ResTimeVO timevo = (ResTimeVO)map.get("timevo");
			timevo.setResTime(req.getParameter("resTime"));
			resdate = sdf.parse(resdateStr);
			timevo.setResDate(resdate);
			
			
			mapper.addCount(timevo);
			
//			if(mapper.selectCount() > 0 ) {
//				mapper.addCount(timevo);
//			}else {
//				mapper.noCount(timevo);
//			}
//			
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
		return null;

	}

}
