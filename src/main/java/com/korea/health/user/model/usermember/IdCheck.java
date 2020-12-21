package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("usermemberidCheck")
public class IdCheck implements Action{

	private static final Logger LOGGER = LoggerFactory.getLogger(IdCheck.class);

	@Resource
	UserMemberMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		UserMemberVO mvo =(UserMemberVO)map.get("mvo"); //폼에서 넘어온 값 
		LOGGER.info(mvo.toString());
		
		LOGGER.info("(String)req.getParameter(\"user_id: \")"+(String)req.getParameter("user_id"));

		String user_id = (String)req.getParameter("user_id");
		UserMemberVO uvo = mapper.idCheck(user_id) ;
		
		
		
		if(uvo!=null) {
			LOGGER.info("uvo.toString()"+uvo.toString());
		}
		
		if(uvo==null) {
			LOGGER.info("id 중복없음");
			req.setAttribute("user_id", user_id);
			
			return req;

		}else {
			LOGGER.info("id 중복있음");
			req.setAttribute("user_id", "idCheckFailed");

			return req;	
			}
		
		
		
		
	}


}