package com.korea.health.user.model.Reservation;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.mybatis.logging.LoggerFactory;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.usermember.UserMemberVO;


@Service("reservationpwCheckOk")
public class PwCheakOk implements Action {

	@Resource
	ResMapper mapper;

	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		System.out.println((String)req.getParameter("user_pw"));
		
		//비밀번호가 틀리면 에러화면이 뜨는데 그 처리를 여기서 해주는지 다음 화면에서 해주는지 .. 
		UserMemberVO uvo =(UserMemberVO)map.get("mvo");
		uvo.setUser_id((String)req.getSession().getAttribute("user_id"));
		uvo.setUser_pw((String)req.getParameter("user_pw"));
		
		
		String lo_no = (String)req.getParameter("lo_no");
		req.setAttribute("lo_no", lo_no);
		req.setAttribute("lo_name", (String)req.getParameter("lo_name"));
		req.setAttribute("tr_name", (String)req.getParameter("tr_name"));
		req.setAttribute("type", (String)req.getParameter("type"));
		req.setAttribute("resTime", (String)req.getParameter("resTime"));
		req.setAttribute("resdate", (String)req.getParameter("resdate"));
		
		UserMemberVO mvo = mapper.pwCheckOk(uvo);
		if(mvo==null) {
			req.setAttribute("user_pw", "pwfailed");
			return req;
			
		}else{
			
			return req;			
		}
		
		
	}

}