package com.korea.health.user.model.review;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.parsing.GenericTokenParser;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("reviewreviewinsertreg")
public class Reviewinsertreg implements Action {

	@Resource
	ReviewMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		ReviewVO vo = (ReviewVO)map.get("rrvo");
		
		mapper.insert(vo);
		return null;

	}

}
