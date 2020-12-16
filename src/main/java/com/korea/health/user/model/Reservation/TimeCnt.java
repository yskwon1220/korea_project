package com.korea.health.user.model.Reservation;

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

		List<ResTimeVO> arr = mapper.selectByRes(timeVO);
		
		LinkedHashMap<Integer,ResTimeVO> data = new LinkedHashMap<>();
		
		
		String res = "{";
		//제이슨 형태로 표현하기 위해서 처음과 끝을 중괄호로 감쌌다
		
		for (int i = 5; i <=21; i+=2) {
			// 시간이 05, 07, 09, 11, 15, 17, 19, 21 로 구성되어있어서 for문을 돈다
			
			res+="\""+i+"\":";
			// 큰 따옴표 감싼다 "05" 
			
			ResTimeVO buf = new ResTimeVO();
			// 바꿔치기할 buf 객체 생성한다
			
			buf.setLo_no(timeVO.getLo_no());
			buf.setResdate(timeVO.getResdate());
			buf.setRestime(i+"");
			buf.setNowCnt(0);
			/// lo_no, resdate, restime, nowCnt 를 담는다.
			
			data.put(i, buf);
			//맵에 담는다
			
			for (ResTimeVO rVO : arr) {
				// 배열을 만든다 for문을 돌면서
				
				if(i == Integer.parseInt(rVO.getRestime())) {
					//String형이라서 parseInt 함
					
					data.put(i, rVO);
					// 조건에 맞다면 담아랏!!
					
				}
			}
			res+=data.get(i).ajaxEle();
			//ajaxEle 는 toString형식으로 VO에 메소드를 만들어놨음. 
			
			if(i!=21)
			 res+=",";
			//21이 되기 전까지 ,를 찍음
		}
		res += "}";

		return res;
	}

}
