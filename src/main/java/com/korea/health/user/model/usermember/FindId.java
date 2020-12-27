package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("usermemberfindId")
public class FindId implements Action {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(FindId.class);


	@Resource
	UserMemberMapper mapper;


	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		System.out.println("usermember/findId execute() 실행");
		
		
		UserMemberVO mvo =(UserMemberVO)map.get("mvo"); //폼에서 입력한 값 가져옴  
		
		UserMemberVO memberId = mapper.findId(mvo);
		
		
		if (memberId == null) {
			req.setAttribute("memberId", "findIdFailed");
			
		}else {
			
			String user_id = memberId.getUser_id();
			req.setAttribute("memberId", user_id);

		}

		return req;
	}

}
