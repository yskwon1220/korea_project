package com.korea.health.user.controll;



import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.korea.health.provider.Action;
import com.korea.health.provider.Myprovider;
import com.korea.health.user.model.payment.PayMember;
import com.korea.health.user.model.payment.Payment_List;
import com.korea.health.user.model.event.EventVO;
import com.korea.health.user.model.payment.CardVO;
import com.korea.health.user.model.payment.CardVO2;


@Controller
@RequestMapping("/user_page_/pay/{cate}/{service}")
public class EventPageController {
   
   @Resource
   Myprovider provider;
  
   @ModelAttribute("mainUrl")
   String mainUrl(
         @PathVariable("cate")String cate,
         @PathVariable("service")String service
         ) {
      String url = "../"+cate+"/"+service+".jsp";
      return url;
   }
   
   @ModelAttribute("data")
   @ResponseBody
   Object mainData(
         @PathVariable("cate")String cate,
         @PathVariable("service")String service,
         @ModelAttribute("event_no")String en ,
         @ModelAttribute("price")String e_pr,
         @ModelAttribute("discount")String dico ,
         @ModelAttribute("title")String title ,
         @ModelAttribute("ticket")String ticket ,
         CardVO vo,
         CardVO2 vo2,
         PayMember pmem,
         Payment_List pl,
         Model mm,
         HttpServletRequest req
		   ) {
	   mm.addAttribute("vo",vo);
	   mm.addAttribute("vo2",vo2);
	   mm.addAttribute("price",e_pr);
	   mm.addAttribute("discount",dico);
	   mm.addAttribute("title",title);
	   mm.addAttribute("ticket",ticket);
      Action action = provider.getContext().getBean(cate, Action.class);

    
      HashMap<String, Object> map = new HashMap<>();
     
      map.put("service", service);
      map.put("event_no", en);
      map.put("vo", vo);
      map.put("vo2", vo2);
      map.put("pl", pl);
      
      Object res = action.execute(map, req);
      System.out.println(res);
      return res;
   }
   
   @RequestMapping
   String view(
         @PathVariable("cate")String cate
		   ) {
      return "user_page_/pay/"+cate+"/template";
   }
   
   
   
}