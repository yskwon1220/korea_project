//package com.korea.health.user.model.usermember;
//
//import java.util.HashMap;
//
//import javax.annotation.Resource;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.stereotype.Service;
//
//import com.korea.health.provider.Action;
//
//@Service("usermember")
//public class UserMemberService implements Action {
//
//	@Resource
//	UserMemberMapper mapper;
//	
//	UserMemberVO mvo;
//	
//	@Override
//	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
//	
//		//HttpSession session = req.getSession();
//		//UserMemberVO mvo = (UserMemberVO)session.getAttribute("id");
//		
//		//mvo = new UserMemberVO();
//		
//		//String id =  (String) map.get("id");
//		//UserMemberVO mvo = (UserMemberVO)map.get("mvo");
//		
//		
//		System.out.println("들어온주소 = " + (String)map.get("service"));
//		
//		switch ((String)map.get("service")) {
//		
//			case "usermembermyPage":
//				return myPage();
//			
//			case "join":
//				return join();
//				
//			case "usermemberjoinMember":
//				return joinMember();
//			
//			
//				
//
//				
//		}
//		
//		
//		return null;
//	}
	
//	
//	Object myPage( ) {
//		UserMemberVO vo = mapper.mypage(mvo.getId());
//
//		return mapper.mypage(mvo.getId());
//	}
//	
//	Object join(){
//		System.out.println("조인탄거임");
//		return mapper.joinMember(mvo);
//		}
//	
//	Object joinMember() {
//		System.out.println("실행");
//		
//		return mapper.joinMember(mvo);
//	}
//	
//
//}
