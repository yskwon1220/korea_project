package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Mapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;


@Service("usermemberjoinReg")
public class JoinReg implements Action {

	private static final Logger LOGGER = LoggerFactory.getLogger(JoinReg.class);

	@Resource
	UserMemberMapper mapper;
	
	
	
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		UserMemberVO mvo =(UserMemberVO)map.get("mvo");
		
		mapper.joinReg(mvo);
		
		LOGGER.info((String)req.getParameter("user_id"));
		LOGGER.info((String)req.getParameter("user_name"));
		
		String user_id = (String)req.getParameter("user_id");
		String user_name = (String)req.getParameter("user_name");
		
		LOGGER.info("String user_id : "+user_id);
		LOGGER.info("String user_name : "+user_name);
		
		UserMemberVO member = new UserMemberVO();
//		
		member.setUser_id(user_id);
		member.setUser_name(user_name);
		
		
		LOGGER.info(member.toString());
//		
		req.setAttribute("member", member);
		
		return req;
	}

}
