package com.korea.health.user.model.Reservation;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.usermember.UserMemberVO;

@Service("reservationdeleteSuccess2")
public class DeleteSuccess2 implements Action {

	@Resource
	ResMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("잘들어오셧어요?");
		
		ReservationVO rvo = (ReservationVO)map.get("rvo");
		UserMemberVO mvo = (UserMemberVO)map.get("mvo");
		
		rvo.setUser_name(req.getParameter("user_id"));
		req.setAttribute("user_id", (String)req.getParameter("user_id"));
		System.err.println("잘들어왓니 22" + rvo.getUser_name());
		System.err.println("잘들어왓니 23" + (String)req.getParameter("user_id"));
		
		mapper.MyResDrop(mvo);
		
		return mapper.deleteRes(rvo);
	}

}
