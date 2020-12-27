package com.korea.health.user.model.Reservation;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.usermember.UserMemberVO;

@Service("reservationdeleteForm")
public class DeleteForm implements Action {

	@Resource
	ResMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		//ReservationVO rvo = (ReservationVO) map.get("rvo");
		//String user_id = req.getParameter("user_id");
		//System.out.println("계세요?"+ req.getParameter("resDate"));
		System.out.println("계세요?"+ req.getParameter("resdate"));
		System.out.println("계세요?"+ req.getParameter("resTime"));
		//System.out.println("계세요?"+ req.getParameter("resdate"));
		
		UserMemberVO mvo = (UserMemberVO)map.get("mvo");
		String user_id = (String)req.getSession().getAttribute("user_id");
		
		req.setAttribute("user_id", user_id);
		req.setAttribute("resdate", req.getParameter("resdate"));
		req.setAttribute("resTime", req.getParameter("resTime"));
		req.setAttribute("lo_no", req.getParameter("lo_no"));
		
		
		UserMemberVO uvo = mapper.userInfo(user_id);
		System.out.println(uvo.toString());
		

		return mapper.userInfo(user_id);
	}

}
