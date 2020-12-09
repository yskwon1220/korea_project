package com.korea.health.user.controll;

import java.util.ArrayList;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.korea.health.user.model.NoticeMapper;

@Controller
@RequestMapping("/style_seongmin/notice/{list}")
public class NoticeController {
	
	
	@Resource
	NoticeMapper mppr;
	
	
	@ModelAttribute("mainUrl")
	String mainUrl(@PathVariable("list")String notice, @ModelAttribute("notice_no")String nno ,Model mm) {
		System.out.println(notice);
		mm.addAttribute("data",mppr.noticelist());
		

	
		return notice+".jsp";
	}
	
	@RequestMapping
	String view() {
		return "style_seongmin/notice/template";
	}
	
}
