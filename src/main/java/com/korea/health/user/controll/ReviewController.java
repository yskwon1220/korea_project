package com.korea.health.user.controll;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReviewController {

	@RequestMapping("/style_hyeon/index")
	public String home() {
		System.out.println("main comin");
		return "/style_hyeon/review_list";
	}
}
