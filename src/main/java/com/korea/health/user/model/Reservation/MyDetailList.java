package com.korea.health.user.model.Reservation;

import java.util.Date;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("reservationmyDetailList")
public class MyDetailList implements Action {

	@Resource
	ResMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		/*
		 * // ReservationVO rvo = (ReservationVO)map.get("rvo"); // ResTimeVO timevo =
		 * (ResTimeVO)map.get("timevo"); int re_no =
		 * Integer.parseInt(req.getParameter("re_no")); //
		 * rvo.setRe_no(Integer.parseInt(req.getParameter("re_no")));
		 * req.setAttribute("re_no", re_no);
		 * 
		 * 
		 * 
		 * rvo.setLo_name((String)req.getParameter("lo_name"));
		 * 
		 * System.out.println((String)req.getParameter("re_no") + rvo.re_no +
		 * rvo.lo_name + rvo.lo_no + rvo.user_name);
		 * 
		 * // System.out.println("계세요?"+ req.getParameter("resDate")); //
		 * System.out.println("계세요?"+ req.getParameter("resdate"));
		 * 
		 * return mapper.MyDetailList(re_no);
		 */

		ReservationVO rvo = (ReservationVO) map.get("rvo");
		ResTimeVO timevo = (ResTimeVO) map.get("timevo");
		rvo.setRe_no(Integer.parseInt(req.getParameter("re_no")));
//아니왜갑자기안되고 지랄이지?..
		/*
		 * rvo.setLo_name((String)req.getParameter("lo_name"));
		 * 
		 * System.out.println((String)req.getParameter("re_no") + rvo.re_no +
		 * rvo.lo_name + rvo.lo_no + rvo.user_name);
		 */
		// System.out.println("계세요?"+ req.getParameter("resDate"));
		// System.out.println("계세요?"+ req.getParameter("resdate"));

		return mapper.MyDetailList(rvo.re_no);

	}

}
