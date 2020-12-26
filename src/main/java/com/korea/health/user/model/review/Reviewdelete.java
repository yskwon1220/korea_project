package com.korea.health.user.model.review;

import java.util.HashMap;

import java.io.File;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("reviewreviewdelete")
public class Reviewdelete implements Action{
	
	@Resource
	ReviewMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		// TODO Auto-generated method stub
		ReviewVO vo = (ReviewVO)map.get("rrvo");
		String user_id = (String)req.getSession().getAttribute("user_id");
		String chkBeforeId = "user_id="+user_id+",";
		String chkID = mapper.chkID(vo.review_no).toString();
		String filename = 	mapper.detail(vo.review_no).getReview_file_name();
		
		String path = req.getRealPath("/upup");
		path =  "C:\\Users\\이현희\\OneDrive\\바탕 화면\\teamProject\\korea_project3\\src\\main\\webapp\\upup";
		
		mapper.detail(vo.review_no);
		System.out.println(" chkID     "+chkID);
		System.out.println("user_id      "+user_id);
		System.out.println("chkBeforeuser_id    "+chkBeforeId);
		System.out.println("chkBeforeuser_id      "+chkID.contains(chkBeforeId));


		if(chkID.contains(chkBeforeId)) {
			mapper.trainerStarDel(vo);
			mapper.delete(vo.getReview_no());
		new File(path + "\\" + filename).delete();
		
		}
//		
		/* return mapper.delete(vo.review_no); */
		return null;
		
	}


	
}
