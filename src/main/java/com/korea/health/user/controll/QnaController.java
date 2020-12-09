package com.korea.health.user.controll;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.korea.health.user.model.NoticeMapper;
import com.korea.health.user.model.QnaMapper;

@Controller
@RequestMapping("/style_seongmin/qna/{list}")
public class QnaController {
	
	
	@Resource
	QnaMapper mppr;
	

	
	
	@ModelAttribute("mainUrl")
	String mainUrl(@PathVariable("list")String notice, @ModelAttribute("qna_no")String nno ,Model mm) {
		System.out.println(notice);
		mm.addAttribute("data",mppr.qnalist());
		

	
		return notice+".jsp";
	}
	
	@RequestMapping
	String view() {
		return "style_seongmin/qna/template";
	}
}
