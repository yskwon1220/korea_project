
package com.korea.health.user.model.Location;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("locationtypelist")
public class TypeList implements Action {

	@Resource
	LocaMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		LocationVO lvo = new LocationVO();

		lvo.setLo_no(req.getParameter("lo_no"));

		lvo.setLo_name(req.getParameter("lo_name"));

		req.setAttribute("lo_no", (String) req.getParameter("lo_no"));
		req.setAttribute("lo_name", (String) req.getParameter("lo_name"));

		return lvo;
	}

}
