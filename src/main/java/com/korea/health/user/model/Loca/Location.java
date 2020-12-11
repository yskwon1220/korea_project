package com.korea.health.user.model.Loca;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;



@Service("localocation")
public class Location implements Action{
	
	@Resource
	LocaMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		System.out.println("loca list execute() 실행");
		return mapper.list();
	}

}
