package com.korea.health.user.controll;


import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.korea.health.provider.Action;
import com.korea.health.provider.Myprovider;
import com.korea.health.user.model.event.cardVO;
import com.korea.health.user.model.fnq.OneboardVO;
import com.korea.health.user.model.notice.NoticeVO;
import com.korea.health.user.model.qna.QnaVO;

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
         cardVO vo,
         Model mm,
         HttpServletRequest req) {
      
	   System.out.println(vo);
	   
	   mm.addAttribute("vo",vo);
      Action action = provider.getContext().getBean("jooho", Action.class);

      HashMap<String, Object> map = new HashMap<>(); 
 
      map.put("service", cate+list);

      
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