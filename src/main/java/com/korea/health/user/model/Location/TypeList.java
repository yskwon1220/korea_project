
package com.korea.health.user.model.Location;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.usermember.UserMemberVO;

@Service("locationtypelist")
public class TypeList implements Action {

	@Resource
	LocaMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		LocationVO lvo = new LocationVO();
		
		UserMemberVO mvo = (UserMemberVO)map.get("mvo");
		
		String user_id = (String)req.getSession().getAttribute("user_id");
		System.out.println();
		System.out.println("ㅎㅇ"+ user_id);

		lvo.setLo_no(req.getParameter("lo_no"));

		lvo.setLo_name(req.getParameter("lo_name"));

		req.setAttribute("lo_no", (String) req.getParameter("lo_no"));
		req.setAttribute("lo_name", (String) req.getParameter("lo_name"));
		//req.setAttribute("user_id", (String) req.getParameter("user_id"));

		return lvo;
	}

}
