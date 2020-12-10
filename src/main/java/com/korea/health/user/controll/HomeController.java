package com.korea.health.user.controll;





import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.korea.health.user.model.OneboardMapper;
import com.korea.health.user.model.OneboardVO;





@Controller
public class HomeController {

	
	@Resource
	OneboardMapper onmapp;
	
	@RequestMapping("/style_hyeji/introMain")
	public String intro() {

		System.out.println("intro comin");
		return "style_hyeji/introMain";
	}

	@RequestMapping("/MainV3")
	public String home() {
		System.out.println("main comin");
		return "MainV3";
	}

	@RequestMapping("/community")
	public void community() {

		System.out.println("comu");
	}
	
}