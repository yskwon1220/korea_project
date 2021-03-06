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
import com.korea.health.user.model.Location.LocationVO;
import com.korea.health.user.model.Reservation.ResTimeVO;
import com.korea.health.user.model.Reservation.ReservationVO;
import com.korea.health.user.model.Trainer.TrainerVO;

@Controller
@RequestMapping("/resAjax/{cate}/{service}")
public class ResAjax {
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
			ReservationVO rvo, 
			LocationVO lovo, 
			TrainerVO tvo,
			ResTimeVO timeVO,
			@PathVariable("cate") String cate, 
			@PathVariable("service") String service,
			HttpServletRequest req) {

		
		Action action = provider.getContext().getBean(cate + service, Action.class);
		HashMap<String, Object> map = new HashMap<>();
		
		
		map.put("rvo", rvo);
		map.put("lovo", lovo);
		map.put("tvo", tvo);
		map.put("timeVO", timeVO);
		
		Object res = action.execute(map, req);
		System.out.println(res);
		return res;
	}
	
	@RequestMapping
	String view(@PathVariable("cate") String cate, 
			    @PathVariable("service") String service) {
		System.out.println("현재 JSP 페이지 : " + cate + "/" + service);

		return "resAjax/"+cate + "/" + service;
	}
	
	
}
