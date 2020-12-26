package com.korea.health.user.model.Reservation;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;



@Service("reservationresPagingList")
public class ResPagingList implements Action{
	
	@Resource
	ResMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		ReservationVO rvo = (ReservationVO) map.get("rvo");
		/*
		 * rvo.setRe_no(Integer.parseInt(req.getParameter("re_no")));
		 * req.setAttribute("re_no",Integer.parseInt(req.getParameter("re_no")));
		 */

//		return mapper.MyResList(req.getParameter("user_name"));
		//위는 단순 리스트 뽑기위한것.
		
		
		ResPageInfo resInfoVO = (ResPageInfo) map.get("resInfoVO");
		req.setAttribute("user_id", (String)req.getParameter("user_id"));
		System.out.println("user_id:"+(String)req.getParameter("user_id"));
		
		resInfoVO.init(mapper.totalCnt());
		resInfoVO.setVoArr(mapper.PagingList(resInfoVO));
		
		return resInfoVO;
	}

}
