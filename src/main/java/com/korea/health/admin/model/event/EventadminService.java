package com.korea.health.admin.model.event;

import java.io.File;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.admin.model.branch.BranchVO;
import com.korea.health.provider.Action;
@Service("admin_page_event")
public class EventadminService implements Action{
	
	@Resource
	EventadminMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest request) {
		
		EventadminVO vo = (EventadminVO)map.get("eventVO");
		
		switch ((String)map.get("service")) {
		case "info":

			return mapper.eventList();
		
//		case "insertForm":
//			System.out.println("switch case : insertForm에 들어왔다.");
//			return mapper.eventCnt();
//			
//		case "insert":
//			System.out.println("switch case : insert에 들어왔다.");
//			System.out.println(vo);
//			
//			mapper.eventInsert(vo);
//			return mapper.eventList();
//
//		case "modifyForm":
//			System.out.println("switch case : modifyForm에 들어왔다.");
//			System.out.println(vo);
//			return mapper.eventDetail(Integer.parseInt(request.getParameter("event_cnt")));
//		
//		case "modify":
//			System.out.println("switch case : modify에 들어왔다.");
//			System.out.println(vo);
//				
//			mapper.eventModify(vo);
//			return mapper.eventDetail(vo.getevent_cnt());
//				
//		case "delete":
//			System.out.println("switch case : delete에 들어왔다.");
//			
//			int cnt = mapper.eventDelete(vo);
//			mapper.newNum(vo);
//			
//			if(cnt == 0) {
//				return mapper.eventDetail(Integer.parseInt(request.getParameter("event_cnt")));
//			}else {
//				return null;
//			}
			
		default:
			break;
		}
		return null;
	}
}
