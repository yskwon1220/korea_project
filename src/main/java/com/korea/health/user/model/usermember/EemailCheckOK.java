package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("mememailCheck")
public class EemailCheckOK implements Action{

	private static final Logger LOGGER = LoggerFactory.getLogger(EemailCheckOK.class);

	@Resource
	UserMemberMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		UserMemberVO mvo =(UserMemberVO)map.get("mvo"); //폼에서 넘어온 값 
		LOGGER.info(mvo.toString());
		
		LOGGER.info("(String)req.getParameter(\"user_email: \")"+(String)req.getParameter("user_email"));

		String user_email = (String)req.getParameter("user_email");
		UserMemberVO uvo = mapper.emailCheck(user_email) ;
		
		
		
		if(uvo!=null) {
			LOGGER.info("uvo.toString()"+uvo.toString());
		}
		
		if(uvo==null) {
			LOGGER.info("email 중복없음");
						
			return "emailO";

		}else {
			LOGGER.info("email 중복있음");
			
			return "emailX";	
			}
		
		
		
		
	}


}