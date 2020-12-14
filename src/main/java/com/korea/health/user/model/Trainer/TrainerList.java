
package com.korea.health.user.model.Trainer;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;



@Service("trainertrainerlist")
public class TrainerList implements Action{
	
	@Resource
	TraiMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
	
		
		
		req.setAttribute("lo_no", (String)req.getParameter("lo_no"));
		req.setAttribute("lo_name", (String)req.getParameter("lo_name"));
		req.setAttribute("type", (String)req.getParameter("type"));

		return mapper.detail(req.getParameter("lo_no"));
		

	}

}
