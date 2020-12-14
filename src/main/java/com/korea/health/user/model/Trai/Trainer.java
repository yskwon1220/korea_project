
package com.korea.health.user.model.Trai;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;



@Service("traitrainer")
public class Trainer implements Action{
	
	@Resource
	TraiMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
	
		//String no = req.getParameter("no");
		
		
		req.setAttribute("no", (String)req.getParameter("no"));
		req.setAttribute("lo_name", (String)req.getParameter("lo_name"));
		req.setAttribute("type", (String)req.getParameter("type"));
		
		System.out.println(req.getAttribute("no"));
		System.out.println(req.getAttribute("lo_name"));
		System.out.println(req.getAttribute("tr_name"));
		System.out.println(req.getAttribute("type"));
		System.out.println(req.getAttribute("user_name"));
		System.out.println(req.getAttribute("user_pw"));
		System.out.println(req.getAttribute("user_tel"));
		System.out.println(req.getAttribute("content"));
		System.out.println(req.getAttribute("restime"));
		
		System.out.println(req.getParameter("no"));
		System.out.println(req.getParameter("lo_name"));
		System.out.println(req.getParameter("tr_name"));
		System.out.println(req.getParameter("type"));
		System.out.println(req.getParameter("user_name"));
		System.out.println(req.getParameter("user_pw"));
		System.out.println(req.getParameter("user_tel"));
		System.out.println(req.getParameter("content"));
		System.out.println(req.getParameter("restime"));
		
		return mapper.detail(req.getParameter("no"));
		

	}

}
