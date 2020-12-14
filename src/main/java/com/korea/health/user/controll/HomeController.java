package com.korea.health.user.controll;





import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.korea.health.user.model.notice.NoticeMapper;





@Controller
public class HomeController {

	
	@Resource
	NoticeMapper mapper;
	
	@RequestMapping("/introMain")
	public String intro() {

		System.out.println("intro comin");
		return "introMain";
	}

	@RequestMapping("/MainV3")
	public String home(Model mm) {
//		List<NoticeVO> data = mapper.noticeList();
//		mm.addAttribute("data",data);
		System.out.println("main comin");
		return "MainV3";
	}

	@RequestMapping("/community")
	public void community() {

		System.out.println("comu");
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

	@RequestMapping(value = "user_page_/location/{service}", method = RequestMethod.GET )
	public void location_1(@PathVariable("service")String service) {
	}
	
}