package com.korea.health.user.model.Reservation;

import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("reservationmyselect")
public class MySelect implements Action{
	@Resource
	ResMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		ResTimeVO timeVO = (ResTimeVO)map.get("timeVO"); 
		ReservationVO rvo = (ReservationVO)map.get("rvo");

		//List<ResTimeVO> arr = mapper.selectByRes(timeVO);
		
		//LinkedHashMap<Integer,ResTimeVO> data = new LinkedHashMap<>();
		
		
		  String user_id = (String)req.getSession().getAttribute("user_id");
		  System.out.println("ㅎㅇ"+ user_id); 
		  
		  rvo.setUser_id(user_id);
		//  mapper.userInfo();
		 
		
		return mapper.MyDateSelect2(rvo) ;

	}

}
