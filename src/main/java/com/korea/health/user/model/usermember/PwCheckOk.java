package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("usermemberpwCheckOk")
public class PwCheckOk implements Action {

	private static final Logger LOGGER = LoggerFactory.getLogger(PwCheckOk.class);
	
	@Resource
	UserMemberMapper mapper;

	
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		

		System.out.println("usermember/pwcheckOk execute() 실행");
		
		
		System.out.println((String)req.getParameter("user_pw"));
		
		//비밀번호가 틀리면 에러화면이 뜨는데 그 처리를 여기서 해주는지 다음 화면에서 해주는지 .. 
		UserMemberVO uvo =(UserMemberVO)map.get("mvo");
		uvo.setUser_id((String)req.getSession().getAttribute("user_id"));
		uvo.setUser_pw((String)req.getParameter("user_pw"));
		
		LOGGER.info("(String)req.getSession().getAttribute(\"user_id\") : "+(String)req.getSession().getAttribute("user_id"));
		
		
		UserMemberVO mvo = mapper.pwCheckOk(uvo);
		if(mvo==null) {
			LOGGER.info("비밀번호 틀림");
			req.setAttribute("user_pw", "pwfailed");
			
			return req;
			
		}else{
			LOGGER.info("비밀번호 okok");
			
			return req;			
		}
		
		
	}

}
