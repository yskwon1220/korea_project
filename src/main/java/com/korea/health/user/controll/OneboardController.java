package com.korea.health.user.controll;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.korea.health.user.model.OneboardMapper;

@Controller
@RequestMapping("/style_seongmin/fnq/{list}")
public class OneboardController {
	
	
	@Resource
	OneboardMapper mppr;
	
	
	@ModelAttribute("mainUrl")
	String mainUrl(@PathVariable("list")String notice, @ModelAttribute("oneboard_no")String nno ,Model mm) {
		System.out.println(notice);
		mm.addAttribute("data",mppr.onelist());
		

	
		return notice+".jsp";
	}
	
	@RequestMapping
	String view() {
		return "style_seongmin/fnq/template";
	}
	
}
