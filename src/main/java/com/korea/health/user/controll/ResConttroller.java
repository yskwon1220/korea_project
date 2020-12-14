package com.korea.health.user.controll;
import java.util.HashMap;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.korea.health.provider.Action;
import com.korea.health.provider.Kind;
import com.korea.health.provider.Myprovider;
import com.korea.health.user.model.Loca.LocaVO;
import com.korea.health.user.model.Res.ResVO;
import com.korea.health.user.model.Trai.TraiVO;

@Controller
@RequestMapping("/user_page_/hyeji/{cate}/{service}")
public class ResConttroller {
	@Resource
	Myprovider provider;

	@ModelAttribute
	Kind kind(@PathVariable("cate") String cate, 
			@PathVariable("service") String service) {
		Kind kind = new Kind();
		kind.setCate(cate);
		kind.setService(service);
		kind.setMainUrl("user_page_/hyeji/"+cate + "/" + service + ".jsp");
		return kind;
	}

	@ModelAttribute("data")
	Object mainData(
			ResVO rvo, 
			LocaVO lovo, 
			TraiVO tvo,

			@PathVariable("cate") String cate, 
			@PathVariable("service") String service,
			HttpServletRequest req) {

		
		Action action = provider.getContext().getBean(cate + service, Action.class);
		HashMap<String, Object> map = new HashMap<>();
		
		
		map.put("rvo", rvo);
		map.put("lovo", lovo);
		map.put("tvo", tvo);
		
		System.out.println("현재 JSP 페이지 : " + cate + "/" + service);
		System.out.println("##################");

		System.out.println(map);
		Object res = action.execute(map, req);
		return res;
	}
	
	@RequestMapping
	String view() {
		return "template";
	}
	
	
}
