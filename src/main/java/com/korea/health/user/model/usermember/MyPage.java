package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.websocket.Session;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("usermembermyPage")
public class MyPage implements Action {

	private static final Logger LOGGER = LoggerFactory.getLogger(MyPage.class);
	
	@Resource
	UserMemberMapper mapper;

	UserMemberVO mvo;	
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

//		String id = (String)map.get("id");
//		System.out.println(map.get("id"));
//
//		////////////이부분 물어볼 부분
//		if(req.getSession() !=null) {
//	         id = (String)req.getSession().getAttribute("id");
//		}
//		////////////이부분

		String user_id = (String)req.getSession().getAttribute("user_id");
		LOGGER.info("user_id : "+user_id);
		
		System.out.println("usermember/myPage execute() 실행");
		
		return mapper.mypage(user_id); 
		
	}

}
