package com.korea.health.user.model.review;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.korea.health.provider.Action;

@Service("reviewfileDelete")
public class ReviewFileDelete implements Action {

	@Resource
	ReviewMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		//PRO : Forward안됌. RVO값을 못받음
		
		System.out.println("fileDelete");
		
		ReviewVO vo = (ReviewVO)map.get("rrvo");
		
		String path = req.getRealPath("/upup");
		path =  "C:\\Users\\Yongseok\\Desktop\\teamProject\\workspace\\korea_project\\src\\main\\webapp\\upup";
		
		
		new File(path + "\\" + vo.getReview_file_name()).delete();
		
		
		
		
		System.out.println("====================");
		System.out.println("### @ReviewFileDelete.java ###");
		System.out.println(vo);
		mapper.fileDelete(vo);
		
	
		AlertVO res = new AlertVO();
		res.setMsg("파일이 삭제되었습니다");
		res.setUrl("reviewmodify?review_no="+vo.review_no );
		return res;
	}

	
	
	
	
	
}
