package com.korea.health.user.controll;
import java.util.HashMap;
import java.util.List;

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
import com.korea.health.user.model.Reservation.ResPageInfo;
import com.korea.health.user.model.Reservation.ResTimeVO;
import com.korea.health.user.model.Reservation.ReservationVO;
import com.korea.health.user.model.Trainer.TrainerVO;
import com.korea.health.user.model.review.ReviewPagingInfo;
import com.korea.health.user.model.review.ReviewVO;

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
			ResPageInfo resInfoVO,
			
			ReviewVO rrvo,
	         ReviewPagingInfo infoVo,
			
			HttpServletRequest req,Model mm,
			@PathVariable("cate") String cate, 
			@PathVariable("service") String service
			) {

		  mm.addAttribute("reviewVO");
		//  List<LocationVO> locaList =  locaMapper.list();
		  
		Action action = provider.getContext().getBean(cate + service, Action.class);
		HashMap<String, Object> map = new HashMap<>();

		 map.put("rrvo", rrvo);
	      map.put("infoVo",infoVo);
	     // map.put("locaList",locaList);
		
		
		map.put("rvo", rvo);
		map.put("lovo", lovo);
		map.put("tvo", tvo);
		map.put("timevo", timevo);
		map.put("resInfoVO", resInfoVO); 
		
		System.out.println("현재 JSP 페이지 : " + cate + "/" + service);

		Object res = action.execute(map, req);
		return res;
	}
	
	@RequestMapping
	String view() {
		return "template";
	}
	
	
}
