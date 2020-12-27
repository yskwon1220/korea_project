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



@Service("reservationsuccess")
public class Success implements Action{
	
	@Resource
	ResMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		String resdateStr = req.getParameter("resdate");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy_M_d");
		Date resdate;
		try {
			ReservationVO rvo = (ReservationVO)map.get("rvo");
			UserMemberVO mvo = (UserMemberVO)map.get("mvo");
			
			
			mapper.insert(rvo);
			mapper.MyResMinusCnt(mvo);
			
			rvo.setLo_no(req.getParameter("lo_no")); 
			rvo.setUser_name(req.getParameter("user_name"));
			rvo.setUser_id(req.getParameter("user_id"));

			req.setAttribute("lo_no", (String)req.getParameter("lo_no"));
			req.setAttribute("user_id", (String)req.getParameter("user_id"));
			req.setAttribute("user_name", (String)req.getParameter("user_name"));

			ResTimeVO timevo = (ResTimeVO)map.get("timevo");
			timevo.setResTime(req.getParameter("resTime"));
			
			resdate = sdf.parse(resdateStr);
			timevo.setResDate(resdate);
			
			
			int cnt = mapper.selectCount(timevo);
			//count(*) 갯수가 0이다 
			
			if(cnt != 0 ) {
				System.out.println("이것은?:"+cnt);
				mapper.addCount(timevo);
				//만약 데이터가 이미 존재한다면 다중테이블의 nowCnt를 1씩증가시킨다.(update)
			}else {
				System.out.println("이것은?:"+cnt);
				mapper.noCount(timevo);
				//만약 존재하지않다면 다중테이블의 nowCnt에 1을 대입한다.(insert)
			}
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		return null;
	}
}
