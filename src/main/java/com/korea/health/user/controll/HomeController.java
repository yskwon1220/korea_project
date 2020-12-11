package com.korea.health.user.controll;




import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.korea.health.user.model.OneboardMapper;





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
	
	@RequestMapping("/style_minjoo/join")
	public void join() {
		
		System.out.println("join");  
	}
}