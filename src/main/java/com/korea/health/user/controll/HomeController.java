package com.korea.health.user.controll;





import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
public class HomeController {

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