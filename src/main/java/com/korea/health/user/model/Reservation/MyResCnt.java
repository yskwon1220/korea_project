package com.korea.health.user.model.Reservation;

import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.usermember.UserMemberVO;

@Service("reservationmyrescnt")
public class MyResCnt implements Action{
	@Resource
	ResMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		ReservationVO rvo = (ReservationVO)map.get("rvo");
		UserMemberVO mvo = (UserMemberVO)map.get("mvo");

		
		//http://localhost:81/resAjax/reservation/myrescnt?user_id=hyeji
		
		  String user_id = (String)req.getSession().getAttribute("user_id");
		  System.out.println("ㅎㅇ"+ user_id); 
		  
		  mvo.setUser_id(user_id);
		 
		//0,1 뜨는거 성공! 이제 ㄹㅇ 아작스를 만들어보자!
		return mapper.MyResCnt(mvo);

	}

}
