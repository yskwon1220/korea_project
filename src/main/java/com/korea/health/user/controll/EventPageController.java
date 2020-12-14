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
<<<<<<< HEAD
import com.korea.health.user.model.event.cardVO;
import com.korea.health.user.model.fnq.OneboardVO;
import com.korea.health.user.model.notice.NoticeVO;
import com.korea.health.user.model.qna.QnaVO;
=======
import com.korea.health.user.model.payment.payMember;
import com.korea.health.user.model.event.EventVO;
import com.korea.health.user.model.payment.Payment_Result;
import com.korea.health.user.model.payment.cardVO;
import com.korea.health.user.model.payment.cardVO2;

>>>>>>> refs/remotes/origin/yongseok

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
   
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value="/user_page_/payment/cardpay", method =
	 * RequestMethod.POST)
	 * 
	 * public Object Jsonpayment(@RequestBody Payment_Result pr, Model mm) {
	 * 
	 * Map<Object, Object> map = new HashMap(); mm.addAttribute("pr",pr);
	 * System.out.println(pr.getCard_select()); return map; }
	 */
   
   @ModelAttribute("data")
   @ResponseBody
   Object mainData(
         @PathVariable("cate")String cate,
<<<<<<< HEAD
         @PathVariable("list")String list,
=======
         @PathVariable("service")String service,
         @ModelAttribute("event_no")String en ,
         @ModelAttribute("price")String e_pr,
         @ModelAttribute("discount")String dico ,
         Payment_Result pr,
         HttpSession session,
>>>>>>> refs/remotes/origin/yongseok
         cardVO vo,
<<<<<<< HEAD
=======
         cardVO2 vo2,
>>>>>>> refs/remotes/origin/yongseok
         Model mm,
         HttpServletRequest req
		   ) {
	   session.setAttribute("user", new payMember("a1", "이주호"));
	   mm.addAttribute("pr",pr);
	   mm.addAttribute("vo",vo);
<<<<<<< HEAD
      Action action = provider.getContext().getBean("jooho", Action.class);

      HashMap<String, Object> map = new HashMap<>(); 
 
      map.put("service", cate+list);

=======
	   mm.addAttribute("vo2",vo2);
	   mm.addAttribute("price",e_pr);
	   mm.addAttribute("discount",dico);
      Action action = provider.getContext().getBean(cate, Action.class);
      System.out.println(pr);
      HashMap<String, Object> map = new HashMap<>();
      payMember u_ss = (payMember)session.getAttribute("user");
     
      map.put("user_ss", u_ss.getId());
      map.put("service", service);
      map.put("event_no", en);
      map.put("vo", vo);
      map.put("vo2", vo2);
>>>>>>> refs/remotes/origin/yongseok
      
      Object res = action.execute(map, req);
      
      return res;
   }
   
   @RequestMapping
   String view(
         @PathVariable("cate")String cate
		   ) {
      return "user_page_/pay/"+cate+"/template";
   }
   
   
   
}