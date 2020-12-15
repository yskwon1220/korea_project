package com.korea.health.admin.controll;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.korea.health.admin.model.trainer.TrainerVO;
import com.korea.health.provider.Action;
import com.korea.health.provider.Kind;
import com.korea.health.provider.Myprovider;
import com.korea.health.service.Pagenation;

@Controller		
@RequestMapping("/admin_page_/{cate}/{service}")
public class ProviderController {
	
	@Resource	// webProvider 주입
	Myprovider provider;
	
	@ModelAttribute
	Kind kind(
			@PathVariable("cate") String cate,
			@PathVariable("service") String service
			) {
		
		Kind kind = new Kind();
		kind.setCate(cate);
		kind.setService(service);
		kind.setMainUrl(cate + "/" + service + ".jsp");
		System.out.println(kind.getMainUrl());
		return kind;
	}
	
	@ModelAttribute("data")
	Object mainData(
				@PathVariable("cate") String cate,
				@PathVariable("service") String service,
				@RequestParam(required = false, defaultValue = "1") int page,
				@RequestParam(required = false, defaultValue = "1") int range,
				Pagenation pageCtl,
				TrainerVO trVO,
				HttpServletRequest request
			) {
		
		System.out.println("메인데이터에서는? : " + cate);
		
		Action action = provider.getContext().getBean("admin_page_"+cate, Action.class);	// Action을 왼쪽의 이름을 가진 빈으로 만듦
																		// admin_page_ + trainer 로 된 TrainerService을 빈으로 만듦
		
		HashMap <String, Object> map = new HashMap<String, Object>();
		
		map.put("service", service);		// 그리고 뒤에 따라오는 주소를 통해서 각 기능을 다르게 하는 service를 map에 넣어서 보내기
		map.put("pageCtl", pageCtl);
		map.put("page", page);
		map.put("range", range);
		map.put("trVO", trVO);
		
		Object res = action.execute(map, request);		// 해당 action의 execute를 실행하여 db들렸다가 반환되는 걸 담아옴 
		
		return res;		// 그게 리턴되며 ModelAttribute인 data에 담기게 됌
		
	}
	
	@RequestMapping
	String view() {
		System.out.println("view에 접근하였습니다.");
		return "admin_page_/template";
	}
}
