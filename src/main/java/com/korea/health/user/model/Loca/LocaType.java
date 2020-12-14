
package com.korea.health.user.model.Loca;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;


@Service("locatype")
public class LocaType implements Action {

	@Resource
	LocaMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		LocaVO lvo = new LocaVO();
		
		
		lvo.setNo(req.getParameter("no")); 
		  
		lvo.setLo_name(req.getParameter("lo_name"));
		
		
	req.setAttribute("no", (String)req.getParameter("no"));
		req.setAttribute("lo_name", (String)req.getParameter("lo_name"));
		  
			System.out.println(req.getAttribute("no"));
			System.out.println(req.getAttribute("lo_name"));
			System.out.println(req.getAttribute("tr_name"));
			System.out.println(req.getAttribute("type"));
			System.out.println(req.getAttribute("user_name"));
			System.out.println(req.getAttribute("user_pw"));
			System.out.println(req.getAttribute("user_tel"));
			System.out.println(req.getAttribute("content"));
			System.out.println(req.getAttribute("restime"));

			
		return lvo;
	}

}
