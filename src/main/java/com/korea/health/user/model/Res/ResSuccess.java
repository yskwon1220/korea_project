package com.korea.health.user.model.Res;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;



@Service("ressuccess")
public class ResSuccess implements Action{
	
	@Resource
	ResMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		ResVO resVO = (ResVO)map.get("rvo");

		mapper.insert(resVO);
		
		ResVO rvo = new ResVO();
		
		rvo.setNo(req.getParameter("no")); 
		rvo.setLo_name(req.getParameter("lo_name"));
		rvo.setTr_name(req.getParameter("tr_name"));
		rvo.setType(req.getParameter("type"));
		rvo.setUser_name(req.getParameter("user_name"));
		rvo.setUser_pw(req.getParameter("user_pw"));
		rvo.setUser_tel(req.getParameter("user_tel"));
		rvo.setContent(req.getParameter("content"));
		rvo.setRestime(req.getParameter("restime"));

		
		req.setAttribute("no", (String)req.getParameter("no"));
		req.setAttribute("lo_name", (String)req.getParameter("lo_name"));
		req.setAttribute("tr_name", (String)req.getParameter("tr_name"));
		req.setAttribute("type", (String)req.getParameter("type"));
		req.setAttribute("user_name", (String)req.getParameter("user_name"));
		req.setAttribute("user_pw", (String)req.getParameter("user_pw"));
		req.setAttribute("user_tel", (String)req.getParameter("user_tel"));
		req.setAttribute("content", (String)req.getParameter("content"));
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
