package com.korea.health.user.controll;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.korea.health.user.model.EventMapper;



@Controller
@RequestMapping("/style_jooho/event/{list}")
public class EventPageController {
	
	@Resource
	EventMapper mapper;
	
	@ModelAttribute("eventSel")
	ArrayList<String[]> eventSel(){
		ArrayList<String[]> url = new ArrayList<>();
			url.add(new String[] {"..style_jooho/event/event_detail"});
		return url;
	}
	
	@ModelAttribute("mainUrl")
	String mainUrl(@PathVariable("list")String event, @ModelAttribute("event_no")String en ,Model mm) {
		mm.addAttribute("data",mapper.list());
		
		if(en.equals(""))
			en="err";
		mm.addAttribute("detail",mapper.event2(en));
	
		return event+".jsp";
	}
	
	@RequestMapping
	String view() {
		return "style_jooho/event/template";
	}
	
	

}
