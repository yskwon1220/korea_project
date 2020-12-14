package com.korea.health.user.model.Res;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;



@Service("resinsertForm")
public class ResInsertForm implements Action{
	
	@Resource
	ResMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		
		ResVO rvo = (ResVO) map.get("rvo");
		req.setAttribute("no", (String)req.getParameter("no"));
		req.setAttribute("lo_name", (String)req.getParameter("lo_name"));
		req.setAttribute("tr_name", (String)req.getParameter("tr_name"));
		req.setAttribute("type", (String)req.getParameter("type"));
		req.setAttribute("restime", (String)req.getParameter("restime"));
		
		System.out.println(req.getAttribute("no"));
		System.out.println(req.getAttribute("lo_name"));
		System.out.println(req.getAttribute("tr_name"));
		System.out.println(req.getAttribute("type"));
		System.out.println(req.getAttribute("user_name"));
		System.out.println(req.getAttribute("user_pw"));
		System.out.println(req.getAttribute("user_tel"));
		System.out.println(req.getAttribute("content"));
		System.out.println(req.getAttribute("restime"));
		
		return null;
	}

}
