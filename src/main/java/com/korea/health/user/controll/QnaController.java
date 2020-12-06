package com.korea.health.user.controll;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.korea.health.user.model.QnaMapper;

@Controller
public class QnaController {
	
	
	@Resource
	QnaMapper mppr;
	
	
	@RequestMapping("/style_seongmin/one_list")
	String qna_list (Model mm) {
		mm.addAttribute("data",mppr.qna_list());
		
		return "style_seongmin/one_list";
	}
}
