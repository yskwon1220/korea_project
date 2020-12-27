package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("usermemberfindPw")
public class FindPw implements Action {

	@Resource
	UserMemberMapper mapper;


	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		

		System.out.println("usermember/findPw execute() 실행");
		
		UserMemberVO mvo =(UserMemberVO)map.get("mvo"); //폼에서 입력한 값 가져옴  
		
		UserMemberVO memberPw = mapper.findPw(mvo);
		
				
		if (memberPw == null) {
			req.setAttribute("memberPw", "findPwFailed");
			
		}else {
			
			String user_pw = memberPw.getUser_pw();
			req.setAttribute("memberPw", user_pw);
		}
		
		return req;
	}

}
