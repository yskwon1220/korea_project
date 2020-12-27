package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("usermemberloginReg")
public class LoginReg implements Action {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(LoginReg.class);


	@Resource
	UserMemberMapper mapper;

//	UserMemberVO mvo;
	
	
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		
		
//		System.out.println("#####1");
//		System.out.println((String)req.getParameter("id"));
//		System.out.println((String)req.getParameter("pw"));
		
		LOGGER.info("(String)req.getParameter(\"id\") :"+(String)req.getParameter("user_id"));

		UserMemberVO mvo =(UserMemberVO)map.get("mvo"); //폼에서 넘어온 값 
		
		LOGGER.info(mvo.toString());
		
		UserMemberVO uvo = mapper.loginReg(mvo) ;
		
		if(uvo!=null) {
			LOGGER.info(uvo.toString());
		}
		
				if(uvo==null) {
					LOGGER.info("id 없음");
					req.setAttribute("user_id", "idfailed");
					return req;
		
				}else if(uvo.getUser_id().equals((String)req.getParameter("user_id"))) {
					LOGGER.info("login id ok");
					
					
					if(uvo.getAdmin()==null) {
						LOGGER.info("admin if 진입 admin아님");
						req.getSession().setAttribute("admin", "user");
						
					}else if(uvo.getAdmin().equals("admin")) {
						LOGGER.info("admin elseif 진입 admin임");
						req.getSession().setAttribute("admin", "admin");
						LOGGER.info((String)req.getSession().getAttribute("admin"));
					}  
					//회원정보 설정
					req.getSession().setAttribute("user_id", uvo.getUser_id());
					req.getSession().setAttribute("user_name", uvo.getUser_name());
		
					return req;
					
				}

		return null;
		
	}

}