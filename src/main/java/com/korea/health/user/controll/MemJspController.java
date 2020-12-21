package com.korea.health.user.controll;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.korea.health.provider.Action;
import com.korea.health.provider.Kind;
import com.korea.health.provider.Myprovider;
import com.korea.health.user.model.usermember.UserMemberVO;

@Controller
@RequestMapping("/memJsp/{cate}/{service}")
public class MemJspController {
	@Resource
	Myprovider provider;

	@ModelAttribute
	Kind kind(@PathVariable("cate") String cate, 
			@PathVariable("service") String service) {
		Kind kind = new Kind();
		kind.setCate(cate);
		kind.setService(service);
		//kind.setMainUrl("user_page_/"+cate + "/" + service + ".jsp");
		return kind;
	}

	@ModelAttribute("data")
	Object mainData(
			UserMemberVO mvo,
			@PathVariable("cate") String cate, 
			@PathVariable("service") String service,
			HttpServletRequest req) {
		
		Action action = provider.getContext().getBean(cate + service, Action.class);
		HashMap<String, Object> map = new HashMap<>();
		
		
		map.put("mvo", mvo);

		
		Object res = action.execute(map, req);
		System.out.println(res);
		return res;
	}
	
	@RequestMapping
	String view(@PathVariable("cate") String cate, 
			    @PathVariable("service") String service) {
		System.out.println("현재 JSP 페이지 : " + cate + "/" + service);
		//나만의 아작스 데이터는 굳이 템플릿을 안거쳐두 되기 때문에 컨트롤러를 하나더 생성했당 ! 

		return "memJsp/"+cate + "/" + service;
	}
	
	
}
