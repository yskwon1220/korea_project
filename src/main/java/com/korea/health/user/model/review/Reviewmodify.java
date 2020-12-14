package com.korea.health.user.model.review;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("reviewreviewmodifyreg")
public class Reviewmodify implements Action {

	@Resource
	ReviewMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		//PRO : Forward안됌. RVO값을 못받음
		
		System.out.println("reviewmodify");
		
		ReviewVO vo = (ReviewVO)map.get("rvo");
		
		System.out.println("====================");
		System.out.println(vo.toString());
		
		if(1 == mapper.modify(vo)) {
			System.out.println("OOOOOOOOOOOOOOOOOOOOOO");
		} else {
			System.out.println("XXXXXXXXXXXXXXXXXXXXXX");
		}
		
		return mapper.modify(vo);
		
	}

}
