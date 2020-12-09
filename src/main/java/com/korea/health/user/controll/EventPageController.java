package com.korea.health.user.controll;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.korea.health.service.Action;

import com.korea.health.service.Myprovider;
import com.korea.health.user.model.EventMapper;
import com.korea.health.user.model.cardVO;



@Controller
@RequestMapping("/style_jooho/{cate}/{list}")
public class EventPageController {
   

   @Resource
   Myprovider provider;
  
   @ModelAttribute("mainUrl")
   String mainUrl(
         @PathVariable("cate")String cate,
         @PathVariable("list")String list
         ) {
      String url = "../"+cate+"/"+list+".jsp";
      return url;
   }
   
   @ModelAttribute("data")
   Object mainData(
         @PathVariable("cate")String cate,
         @PathVariable("list")String list,
         @ModelAttribute("event_no")String en ,
         cardVO vo,
         Model mm,
         HttpServletRequest req) {
      
	   System.out.println(vo);
	   
	   mm.addAttribute("vo",vo);
      Action action = provider.getContext().getBean("jooho", Action.class);

      HashMap<String, Object> map = new HashMap<>(); 
 
      map.put("service", cate+list);
      map.put("event_no", en);
      
      Object res = action.execute(map, req);
      
      System.out.println(res);
      
      return res;
   }
   
   

   
   @RequestMapping
   String view(
         @PathVariable("cate")String cate
		   ) {
      return "style_jooho/"+cate+"/template";
   }
   
   
   
}