package com.korea.health.user.controll;





import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.korea.health.user.model.notice.NoticeMapper;
import com.korea.health.user.model.notice.NoticeVO;
import com.korea.health.user.model.review.ReviewMapper;
import com.korea.health.user.model.review.ReviewVO;






@Controller
public class HomeController {
	
	@Resource
	NoticeMapper mapper;
	@Resource
	ReviewMapper revMapper;
	

	
	
	@RequestMapping("/introMain")
	public String intro() {

		System.out.println("intro comin");
		return "introMain";
	}

	@RequestMapping("/MainV3")
	public String home(Model mm) {
		List<NoticeVO> data = mapper.allNoticeList();
		List<ReviewVO> data_22 = revMapper.allReviewList();
		mm.addAttribute("data",data);
		mm.addAttribute("data_22",data_22);
		System.out.println("main comin");
		return "MainV3";
	}
	
	@RequestMapping("/introduce")
	public void introduce() {

		System.out.println("introduce");
		
	}
	
	@RequestMapping("/membership")
	public void membership() {

		System.out.println("membership");
		
	}
	
	@RequestMapping("/find")
	public void find() {
		
		System.out.println("comu");
		
	}

//	@RequestMapping(value = "style_hyeon/location/{service}", method = RequestMethod.GET )
//	public void location_1(@PathVariable("service")String service) {
//	}
//	
//	@RequestMapping(value = "user_page_/location/{service}", method = RequestMethod.GET )
//	public void location(@PathVariable("service")String service) {
//	}
//	
//	@RequestMapping(value = "user_page_/pay/payment/{service}", method = RequestMethod.GET )
//	public void pay(@PathVariable("service")String service) {
//	}
//	
//	


	
}