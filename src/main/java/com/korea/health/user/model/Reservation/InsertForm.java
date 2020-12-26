package com.korea.health.user.model.Reservation;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.usermember.UserMemberVO;



@Service("reservationinsertForm")
public class InsertForm implements Action{
	
	@Resource
	ResMapper mapper;
	
	

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		ReservationVO rvo = new ReservationVO();
		UserMemberVO mvo = (UserMemberVO)map.get("mvo");
	
		
		
		String user_id = (String)req.getSession().getAttribute("user_id");
		System.out.println();
		System.out.println("ㅎㅇ"+ user_id);
		
		//mvo.setUser_id((String)req.getSession().getAttribute("user_id"));
		//System.out.println("너님누구세요?"+mvo.getUser_id());
		
		String lo_no = (String)req.getParameter("lo_no");
		req.setAttribute("lo_no", lo_no);
		req.setAttribute("lo_name", (String)req.getParameter("lo_name"));
		req.setAttribute("tr_name", (String)req.getParameter("tr_name"));
		req.setAttribute("type", (String)req.getParameter("type"));
		req.setAttribute("resTime", (String)req.getParameter("resTime"));
		req.setAttribute("resdate", (String)req.getParameter("resdate"));

		UserMemberVO uvo = mapper.userInfo(user_id);
		System.out.println(uvo.toString());
		
		//if(mapper.MyDateSelect(user_id) == 0) {
			return mapper.userInfo(user_id);
		//}
		
		//return null;
	}
}
