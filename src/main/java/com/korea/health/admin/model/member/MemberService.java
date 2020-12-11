package com.korea.health.admin.model.member;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
// dashboard : 방문자 정보 , 예약 정보, 고객문의 정보
@Service("admin_page_member")
public class MemberService implements Action{
	
	@Resource
	MemberMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("execute에 들어온건? " + map.get("service"));
		switch ((String)map.get("service")) {
		case "info":
			System.out.println("switch case : info에 들어왔다.");
			return mapper.memberList();
		default:
			break;
		}
		return null;
	}
}
