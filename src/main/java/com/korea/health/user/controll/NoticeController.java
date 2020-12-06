package com.korea.health.user.controll;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.korea.health.user.model.NoticeMapper;

@Controller
public class NoticeController {
	
	
	@Resource
	NoticeMapper mppr;
	@RequestMapping("/style_seongmin/notice_list")
	String notice_list (Model mm) {
		mm.addAttribute("data",mppr.notice_list());
		
		return "style_seongmin/notice_list";
	}
}
