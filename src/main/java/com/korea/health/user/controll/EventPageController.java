package com.korea.health.user.controll;


import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;




import com.korea.health.user.model.NoticeVO;
import com.korea.health.user.model.OneboardVO;
import com.korea.health.user.model.QnaVO;
import com.korea.health.provider.Action;
import com.korea.health.provider.Myprovider;
import com.korea.health.user.model.cardVO;
import com.korea.health.user.model.event.EventMapper;

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
         @ModelAttribute("board_no")String bn ,
         cardVO vo,
         NoticeVO nvo,
         OneboardVO ovo,
         QnaVO qvo,
         Model mm,
         HttpServletRequest req) {
      
	   System.out.println(vo);
	   
	   mm.addAttribute("vo",vo);
      Action action = provider.getContext().getBean("jooho", Action.class);

      HashMap<String, Object> map = new HashMap<>(); 
 
      map.put("service", cate+list);
      map.put("event_no", en);
      map.put("board_no", bn);
      map.put("nvo", nvo);
      map.put("ovo", ovo);
      map.put("qvo", qvo);
      
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