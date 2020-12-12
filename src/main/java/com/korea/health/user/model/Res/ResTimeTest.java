package com.korea.health.user.model.Res;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("resrestimetest")
public class ResTimeTest implements Action{
	@Resource
	ResMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		ResTestVO testVO = (ResTestVO)map.get("testvo"); 
		
//		System.out.println(req.getParameter("no"));
//		System.out.println(testVO.getLo_no());
//		System.out.println(testVO.getResTime());
//		System.out.println(testVO.getResDate());
//		System.out.println(testVO.getNowCnt());
		
		
		List<ResTestVO> arr = mapper.selectByRes(testVO);
		
		LinkedHashMap<Integer,ResTestVO> data = new LinkedHashMap<>();
		
		
		
		String res = "{";
		for (int i = 5; i <=21; i+=2) {
			res+="\""+i+"\":";
			ResTestVO buf = new ResTestVO();
			buf.setLo_no(testVO.getLo_no());
			buf.setResDate(testVO.getResDate());
			buf.setResTime(i+"");
			buf.setNowCnt(0);
			data.put(i, buf);
			
			for (ResTestVO rVO : arr) {
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
		return res;
	}

}
