package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("usermemberpwCheckOk")
public class PwCheckOk implements Action {

	@Resource
	UserMemberMapper mapper;

	
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		
		

		System.out.println("usermember/pwcheckOk execute() 실행");
		
		System.out.println((String)req.getParameter("id"));
		System.out.println((String)req.getParameter("pw"));
		
		//비밀번호가 틀리면 에러화면이 뜨는데 그 처리를 여기서 해주는지 다음 화면에서 해주는지 .. 
		UserMemberVO uvo =(UserMemberVO)map.get("mvo");
		uvo.setId((String)session.getAttribute("id"));
		
		System.out.println("##session getAttribute id: "+(String)session.getAttribute("id"));
		
		UserMemberVO mvo = mapper.pwCheckOk(uvo);
		if(mvo==null) {
			System.out.println("비밀번호 틀림");
			req.setAttribute("pw", "pwfailed");
			return req;
			
		}else if(mvo.getPw().equals((String)req.getParameter("pw"))) {
			System.out.println("비밀번호 ㅇㅋㅇㅋ");
			
			return req;			
		}
		
		return null;
	}

}
