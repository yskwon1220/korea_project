package com.korea.health.user.model.Reservation;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.usermember.UserMemberVO;

@Service("reservationdeleteForm2")
public class DeleteForm2 implements Action {

	@Resource
	ResMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		
		String user_id = (String)req.getSession().getAttribute("user_id");
		
		req.setAttribute("user_id", user_id);
		
		//UserMemberVO uvo = mapper.userInfo(user_id);

		return mapper.userInfo(user_id);
	}

}
