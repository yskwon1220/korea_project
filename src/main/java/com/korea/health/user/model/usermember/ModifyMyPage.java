package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.websocket.Session;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("usermembermodifyMyPage")
public class ModifyMyPage implements Action {

	private static final Logger LOGGER = LoggerFactory.getLogger(ModifyMyPage.class);

	
	@Resource
	UserMemberMapper mapper;

	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		String user_id = (String)req.getSession().getAttribute("user_id");
		
		LOGGER.info(user_id);

		LOGGER.info("usermember/modifyMyPage execute() 실행");
		
		return mapper.mypage(user_id);
	}

}
