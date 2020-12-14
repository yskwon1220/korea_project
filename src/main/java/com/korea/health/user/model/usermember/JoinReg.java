package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;


@Service("usermemberjoinReg")
public class JoinReg implements Action {

	@Resource
	UserMemberMapper mapper;
	
	
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		UserMemberVO uvo =(UserMemberVO)map.get("mvo");
		mapper.joinReg(uvo) ;
		
		UserMemberVO mvo = new UserMemberVO();
		
		uvo.setId(req.getParameter("id"));
		uvo.setPw(req.getParameter("pw"));
		uvo.setName(req.getParameter("name"));
	
		uvo.setEmail(req.getParameter("email"));		
		uvo.setTel(req.getParameter("tel"));
		uvo.setGender(req.getParameter("gender"));
		
		req.setAttribute("id", (String)req.getParameter("id"));
		req.setAttribute("pw", (String)req.getParameter("pw"));
		req.setAttribute("name", (String)req.getParameter("name"));

		req.setAttribute("email", (String)req.getParameter("email"));
		req.setAttribute("tel", (String)req.getParameter("tel"));
		req.setAttribute("gender", (String)req.getParameter("gender"));
		
		System.out.println( "service " +mvo.getId());
		System.out.println("service request" + req.getParameter("id"));
		
		return null ;
	}

}
