package com.korea.health.user.model.Reservation;

import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("reservationtimecnt")
public class TimeCnt implements Action{
	@Resource
	ResMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		ResTimeVO timeVO = (ResTimeVO)map.get("timeVO"); 
		
		/*
		 * if(1 == Integer.parseInt(req.getParameter("switch"))){
		 * req.setAttribute("switch", 1);
		 * 
		 * return null; }
		 */
		List<ResTimeVO> arr = mapper.selectByRes(timeVO);
		
		LinkedHashMap<Integer,ResTimeVO> data = new LinkedHashMap<>();
		
		
		String res = "{";
		for (int i = 5; i <=21; i+=2) {
			res+="\""+i+"\":";
			
			ResTimeVO buf = new ResTimeVO();
			buf.setLo_no(timeVO.getLo_no());
			buf.setResDate(timeVO.getResDate());
			buf.setResTime(i+"");
			buf.setNowCnt(0);
			data.put(i, buf);
			
			for (ResTimeVO rVO : arr) {
				if(i == Integer.parseInt(rVO.getResTime())) {
					data.put(i, rVO);
					
					//rVO.setNowCnt(123);
				}
			}
			res+=data.get(i).ajaxEle();
			
			if(i!=21)
			 res+=",";
		}
		res += "}";
		//System.out.println(data);
		/*
		 * ReservationVO rvo = new ReservationVO(); rvo.setResdate(timeVO.getResDate());
		 */
		return res;
	}

}
