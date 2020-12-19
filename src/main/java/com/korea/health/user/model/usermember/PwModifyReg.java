package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("usermemberpwModifyReg")
public class PwModifyReg implements Action {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(PwModifyReg.class);

	@Resource
	UserMemberMapper mapper;

		
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("usermember/pwmodifyReg execute() 실행");
		
//		req.getParameter("pw");
//		req.getSession().getAttribute("id");
		
		UserMemberVO mvo =(UserMemberVO)map.get("mvo"); //폼에서 입력한 값 가져옴 
		
		mvo.setUser_id((String)req.getSession().getAttribute("user_id"));
//		mvo.setPw((String)req.getParameter("pw"));
		
		Integer result = mapper.pwModify(mvo) ; 
		
		if(result==0) {
			LOGGER.info("###modifyNO");
			req.setAttribute("modify", "modifyFailed");
			
			return req;

		}else{
			System.out.println("###modifyOk");

//			return mapper.mypage((String)req.getSession().getId());
			return req;
		}
	}

}
