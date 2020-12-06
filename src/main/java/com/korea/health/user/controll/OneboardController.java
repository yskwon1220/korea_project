package com.korea.health.user.controll;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.korea.health.user.model.OneboardMapper;

@Controller
public class OneboardController {
	
	
	@Resource
	OneboardMapper mppr;
	
	
	@RequestMapping("/style_seongmin/qna_list")
	String one_list (Model mm) {
		mm.addAttribute("data",mppr.one_list());
		
		return "style_seongmin/qna_list";
	}
}
