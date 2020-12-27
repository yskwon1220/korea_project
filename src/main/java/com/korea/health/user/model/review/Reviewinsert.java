package com.korea.health.user.model.review;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.parsing.GenericTokenParser;
import org.springframework.stereotype.Service;

import com.korea.health.admin.model.reservation.ReservationVO;
import com.korea.health.provider.Action;
import com.korea.health.user.model.Location.LocaMapper;
import com.korea.health.user.model.Location.LocationVO;
import com.korea.health.user.model.Reservation.ResMapper;
import com.korea.health.user.model.Trainer.TraiMapper;
import com.korea.health.user.model.Trainer.TrainerVO;

@Service("reviewreviewinsert")
public class Reviewinsert implements Action {

	@Resource
	ReviewMapper mapper;
	
	
	@Resource
	ResMapper resMapper;
	
	
	

	@Override					// , HttpSession session
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		String user_id = (String)req.getSession().getAttribute("user_id");
		ReviewVO vo = new ReviewVO();
		
		
		
		/*
		 * for (int i = 0; i < lvo.size(); i++) {
		 * System.out.println(lvo.get(i).getLo_name()); }
		 */
		
		
		// session 객체를 매개변수로 받으면,
		// String id = (String) session.getAttribute("id");
		/* vo.setUser_id(user_id); */
		
		System.out.println(vo.review_no);
		map.put("vo", vo);
		/*
		 * map.put("locationList", lvo); map.put("trList", tvo);
		 */
		
		return mapper.reviewWrite(user_id);
	
		

	}


}
