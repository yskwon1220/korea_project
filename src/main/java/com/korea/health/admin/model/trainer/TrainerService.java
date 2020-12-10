package com.korea.health.admin.model.trainer;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

// trainer 들어왔을 때 액션들 집합
@Service("admin_page_trainer")	// providerController에서 bean 만들어줄때 이름
public class TrainerService implements Action {

	@Resource
	TrainerMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("execute에 들어온건? " + map.get("service"));
		switch ((String)map.get("service")) {
		case "info":
			System.out.println("switch case : info에 들어왔다.");
			return mapper.trainerList();
		default:
			break;
		}
		return null;
	}

}