package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("usermemberdelete")
public class Delete implements Action {

	@Resource
	UserMemberMapper mapper;


	UserMemberVO mvo;	
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		

		System.out.println("usermember/delete execute() 실행");
		
		return null;
	}

}
