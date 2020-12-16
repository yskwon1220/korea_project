package com.korea.health.user.controll;
import java.util.HashMap;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.korea.health.provider.Action;
import com.korea.health.provider.Kind;
import com.korea.health.provider.Myprovider;
import com.korea.health.user.model.Location.LocationVO;
import com.korea.health.user.model.Reservation.ResTimeVO;
import com.korea.health.user.model.Reservation.ReservationVO;
import com.korea.health.user.model.Trainer.TrainerVO;

@Controller
@RequestMapping("/user_page_/{cate}/{service}")
public class ResController {
	@Resource
	Myprovider provider;

	@ModelAttribute
	Kind kind(@PathVariable("cate") String cate, 
			@PathVariable("service") String service) {
		Kind kind = new Kind();
		kind.setCate(cate);
		kind.setService(service);
		kind.setMainUrl("user_page_/"+cate + "/" + service + ".jsp");
		return kind;
	}
	@ResponseBody
	@ModelAttribute("data")
	Object mainData(
			ReservationVO rvo, 
			LocationVO lovo, 
			TrainerVO tvo,
			ResTimeVO timevo,
			//HttpSession ses, 
			HttpServletRequest req,
//			Model mm,
			@PathVariable("cate") String cate, 
			@PathVariable("service") String service
//			@ModelAttribute("re_no") String re_no, 
//			@ModelAttribute("lo_no") String lo_no, 
//			@ModelAttribute("user_name") String user_name,
//			@ModelAttribute("user_pw") String user_pw,
//			@ModelAttribute("type") String type,
//			@ModelAttribute("tr_name") String tr_name,
//			@ModelAttribute("resdate") String resdate,
//			@ModelAttribute("restime") String restime,
//			@ModelAttribute("user_tel") String user_tel,
//			@ModelAttribute("content") String content,
//			@ModelAttribute("lo_tel") String lo_tel,
//			@ModelAttribute("lo_addr") String lo_addr,
//			@ModelAttribute("lo_name") String lo_name,
//			@ModelAttribute("lo_pic") String lo_pic
			
			) {
//		mm.addAttribute("re_no",re_no);
//		mm.addAttribute("lo_no",lo_no);
//		mm.addAttribute("user_name",user_name);
//		mm.addAttribute("user_pw",user_pw);
//		mm.addAttribute("type",type);
//		mm.addAttribute("tr_name",tr_name);
//		mm.addAttribute("resdate",resdate);
//		mm.addAttribute("restime",restime);
//		mm.addAttribute("user_tel",user_tel);
//		mm.addAttribute("content",content);
//		mm.addAttribute("lo_tel",lo_tel);
//		mm.addAttribute("lo_addr",lo_addr);
//		mm.addAttribute("lo_name",lo_name);
//		mm.addAttribute("lo_pic",lo_pic);
		
//		mm.addAttribute("rvo", rvo);
//		mm.addAttribute("lovo", lovo);
//		mm.addAttribute("tvo", tvo);
//		mm.addAttribute("timevo", timevo);
		/* session.setAttribute("user", new payMember("a1", "이주호")); */
		

		
		Action action = provider.getContext().getBean(cate + service, Action.class);
		HashMap<String, Object> map = new HashMap<>();
		
		/* payMember u_ss = (payMember) session.getAttribute("user"); */
		/* map.put("user_ss", u_ss.getId()); */
		map.put("rvo", rvo);
		map.put("lovo", lovo);
		map.put("tvo", tvo);
		map.put("timevo", timevo);
		
		System.out.println("현재 JSP 페이지 : " + cate + "/" + service);

		Object res = action.execute(map, req);
		System.out.println(res);
		return res;
	}
	
	@RequestMapping
	String view() {
		return "template";
	}
	
	
}
