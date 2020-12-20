package com.korea.health.user.model.review;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.korea.health.provider.Action;
import com.korea.health.user.model.Location.LocaMapper;
import com.korea.health.user.model.Location.LocationVO;
import com.korea.health.user.model.Trainer.TraiMapper;
import com.korea.health.user.model.Trainer.TrainerVO;

@Service("reviewreviewmodify")
public class Reviewmodify implements Action {

	@Resource
	ReviewMapper mapper;
	
	@Resource
	LocaMapper locaMapper;
	
	@Resource
	TraiMapper traiMapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		//PRO : Forward안됌. RVO값을 못받음
		
		List<LocationVO> lvo = locaMapper.list();
		List<TrainerVO> tvo = traiMapper.list();
		
		for (int i = 0; i < lvo.size(); i++) {
			System.out.println(lvo.get(i).getLo_name());
		}
		
		
		System.out.println("reviewmodify");
		
		ReviewVO vo = (ReviewVO)map.get("rrvo");
		int review_no = vo.getReview_no();
		
	
		
		ReviewVO review = mapper.detail(review_no);
		
		
		map.put("vo", vo);
		map.put("locationList", lvo);
		map.put("trList", tvo);
		
		return review;
		
	}
	
}
