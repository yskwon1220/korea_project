package com.korea.health.user.model.Location;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("locationlocationReg")
public class LocationReg implements Action {
//

	@Resource
	LocaMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("location/locationlist2 execute() 실행");

		return null;

	}
}
