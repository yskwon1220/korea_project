package com.korea.health.user.controll;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.korea.health.provider.Action;
import com.korea.health.provider.Myprovider;
import com.korea.health.user.model.usermember.UserMemberVO;


@Controller
@RequestMapping("/style_minjoo/{cate}/{list}")
public class UserMemberController {


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
         //@ModelAttribute("event_no")String en ,
         //@ModelAttribute("board_no")String bn ,
         HttpSession session,
         UserMemberVO mvo,
         Model mm,
         HttpServletRequest req) {
      
	   System.out.println(mvo);
	   
	   mm.addAttribute("mvo",mvo);
      Action action = provider.getContext().getBean(cate+list, Action.class);

      HashMap<String, Object> map = new HashMap<>(); 
      String id="";
      if(session !=null) {
    	  id = (String)session.getAttribute("id");
      }
 
      map.put("service", cate+list);
      map.put("mvo",mvo);
//      map.put("id", mvo.getId());
      map.put("id", id);
      System.out.println("[UserMemberController] [mainData] id : "+id);
      
      System.out.println("현재 페이지 :" + cate + "/" + list);
      System.out.println("mvo  : " +mvo.getId());
      
      Object res = action.execute(map, req);
      
      System.out.println("res : "+res);
      
      return res;
   }
   
   @RequestMapping
   String view(
         @PathVariable("cate")String cate
		   ) {
      return "style_minjoo/"+cate+"/template";
   }
}
