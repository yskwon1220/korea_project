package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("usermemberloginReg")
public class LoginReg implements Action {

	@Resource
	UserMemberMapper mapper;

	UserMemberVO mvo;	
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		System.out.println("#####1");
		System.out.println((String)req.getParameter("id"));
		System.out.println((String)req.getParameter("pw"));
		UserMemberVO uvo =(UserMemberVO)map.get("mvo");
		UserMemberVO a = mapper.loginReg(uvo) ;
		if(a==null) {
			System.out.println("###id no");
			req.setAttribute("id", "idfailed");
			return req;
//			return (Object)("failed");
		}else if(a.getId().equals((String)req.getParameter("id"))) {
			System.out.println("###id ok");
			//1) 세션 가져오기
			HttpSession session = req.getSession();
			
	
			//2) 세션 유지시간 설정
			//session.setMaxInactiveInterval(1800); // 1800 = 60s*30 (30분) 
	        
			//3) 회원정보 설정
			session.setAttribute("id", (Object)(a.getId()));
			session.setAttribute("pw", (Object)(a.getPw()));
//			session.setAttribute("name", a.getName());
//			session.setAttribute("", a.getName());
			return req;
			
		}
		
		/*
		req.setAttribute("id", (String)req.getParameter("id"));
		req.setAttribute("pw", (String)req.getParameter("pw"));

		
		System.out.println( "service " +mvo.getId());
		System.out.println("service request" + req.getParameter("id"));
		
		System.out.println(req);
		*/
return null;
		
		
//		return mapper.loginReg();
	}

}