package com.korea.health.user.model.review;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.parsing.GenericTokenParser;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.Location.LocaMapper;
import com.korea.health.user.model.Location.LocationVO;
import com.korea.health.user.model.Trainer.TraiMapper;
import com.korea.health.user.model.Trainer.TrainerVO;

@Service("reviewgetTrainerList")
public class ReviewGetTrainer implements Action {

	@Resource
	ReviewMapper mapper;
	
	@Resource
	LocaMapper locaMapper;
	
	@Resource
	TraiMapper trMapper;
	

	@Override					// , HttpSession session
	public Object execute(HashMap<String, Object> map, HttpServletRequest request) {
		
		String lo_no = request.getParameter("lo_no");
		List<TrainerVO> trList = trMapper.detail(lo_no);
		
		map.put("trList", trList);
	   
		return map;
		

	}


}
