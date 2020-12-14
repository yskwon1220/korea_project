package com.korea.health.user.model.Reservation;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("reservationdeleteSuccess")
public class DeleteSuccess implements Action {

	@Resource
	ResMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		ReservationVO rvo = (ReservationVO) map.get("rvo");
		rvo.setUser_name((String) req.getParameter("user_name"));

		String url = "redirect:deleteSuccess";
		if (mapper.delete(rvo) > 0) {
			url = "myResList";
		}
		req.setAttribute("url", url);
//		System.out.println("delete들어옴:" + rvo);
//		return url;

//		int cnt = mapper.delete(rvo);
//
//		if (cnt != 0) {
//
//			return mapper.MyResList((String) req.getParameter("user_name"));
//
//		} else {
//			return mapper.MyDetailList((String) req.getParameter("re_no"));
//		}
		return url;
	}

}
