//package com.korea.health.user.model.usermember;
//
//import java.util.HashMap;
//
//import javax.annotation.Resource;
//import javax.servlet.http.HttpServletRequest;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.stereotype.Service;
//
//import com.korea.health.provider.Action;
//
//@Service("usermember")
//public class UserMemberService implements Action {
//
//	private static final Logger LOGGER = LoggerFactory.getLogger(UserMemberService.class);
//
//	@Resource
//	UserMemberMapper mapper;
//	
//	
//	@Override
//	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
//	
//		String user_id;
//		String user_name;
//		Integer result;
//		
//		
//		UserMemberVO mvo =(UserMemberVO)map.get("mvo"); // 폼으로부터 넘어온 값 
//		
//		
//		 LOGGER.info("들어온주소 = " + (String)map.get("service"));
//		switch ((String)map.get("service")) {
//		
//		//회원가입 
//			case "usermemberjoinReg":
//				
//				mapper.joinReg(mvo);
//				
//				
//					req.setAttribute("join", "joinFailed");
//					
//					
//				
//					req.setAttribute("join", "joinOk");
//					
//					LOGGER.info((String)req.getParameter("user_id"));
//					LOGGER.info((String)req.getParameter("user_name"));
//					
//					user_id = (String)req.getParameter("user_id");
//					user_name = (String)req.getParameter("user_name");
//					
//					LOGGER.info("String user_id : "+user_id);
//					LOGGER.info("String user_name : "+user_name);
//					
//					UserMemberVO member = new UserMemberVO();
//					
//					member.setUser_id(user_id);
//					member.setUser_name(user_name);
//					
//					LOGGER.info(member.toString());
//					
//					req.setAttribute("member", member);
//					
//					return req;
//				
//			
//				
//				
//		//로그인 
//			case "usermemberloginReg":
//
//				//여기 왜 노란줄 뜨지 이거때문에 오류나는건가 시발색갸 
//				LOGGER.info(mvo.toString());
//				
//				mvo = mapper.loginReg(mvo);
//						if(mvo ==null) {
//							LOGGER.info("user_id 없음");
//							req.setAttribute("user_id", "idfailed");
//							return req;
//				
//						}else if(mvo.getUser_id().equals((String)req.getParameter("user_id"))) {
//							LOGGER.info("login id ok");
//							
//							
//								if(mvo.getAdmin()==null) {
//									LOGGER.info("admin if 진입 admin아님");
//									req.getSession().setAttribute("admin", "user");
//								
//								}else if(mvo.getAdmin().equals("admin")) {
//									LOGGER.info("admin elseif 진입 admin임");
//									req.getSession().setAttribute("admin", "admin");
//									LOGGER.info((String)req.getSession().getAttribute("admin"));
//								}  
//							//회원정보 설정
//							req.getSession().setAttribute("user_id", mvo.getUser_id());
//				
//							return req;
//							
//						}
//
//				return null;
//				
//			
//		//회원탈퇴		
//			case "usermemberdeleteReg":
//				
//				mvo.setUser_id(((String) req.getSession().getAttribute("user_id")));
//				mvo.setUser_pw(req.getParameter("user_pw"));
//
//				LOGGER.info((String) req.getSession().getAttribute("user_id"));
//				LOGGER.info(req.getParameter("user_pw"));
//
//				result = mapper.delete(mvo);
//
//				LOGGER.info(String.valueOf(result));
//				
//				if (result == 1) { // 테이블 삭제가 되었을때 
//					LOGGER.info("delete ok");
//					req.setAttribute("delete", "deleteOk");
//					req.getSession().invalidate();
//					
//					return req;
//				} else {
//					LOGGER.info("delete 안됨");
//					req.setAttribute("delete", "deletefailed");
//					
//					return req;
//				}
//			
//			
//		//회원ID찾기	
//			case "usermemberfindId":
//				
//				mvo =(UserMemberVO)map.get("mvo"); //폼에서 입력한 값 가져옴  
//				
//				UserMemberVO memberId = mapper.findId(mvo);
//				
//				if (memberId == null) {
//					req.setAttribute("memberId", "findIdFailed");
//					
//				}else {
//					req.setAttribute("memberId", memberId);
//
//				}
//
//				return req;
//		
//		//회원PW찾기 
//			case "usermemberfindPw":	
//
//				mvo =(UserMemberVO)map.get("mvo"); //폼에서 입력한 값 가져옴  
//				
//				UserMemberVO memberPw = mapper.findPw(mvo);
//				
//				if (memberPw == null) {
//					req.setAttribute("memberPw", "findPwFailed");
//					
//				}else {
//					req.setAttribute("memberPw", memberPw);
//				}
//				
//				return req;
//			
//				
//		//마이페이지 			
//			case "usermembermyPage":		
//				
//				user_id = (String)req.getSession().getAttribute("user_id");
//				LOGGER.info("user_id : "+user_id);
//				
//				System.out.println("usermember/myPage execute() 실행");
//				
//				return mapper.mypage(user_id);		
//				
//				
//				
//		//마이페이지 정보수정		
//			case "usermembermodifyMyPage":	
//				
//				user_id = (String)req.getSession().getAttribute("user_id");
//				
//				LOGGER.info(user_id);
//
//				LOGGER.info("usermember/modifyMyPage execute() 실행");
//				
//				return mapper.mypage(user_id);
//				
//				
//		//마이페이지 정보수정 처리			
//			case "usermembermodifyMyPageReg":	
//				
//				mvo =(UserMemberVO)map.get("mvo"); //폼에서 입력한 값 가져옴  
//
//				LOGGER.info("usermembermodifyMyPageReg Service : "+mvo.toString());
//
//				result = mapper.modifyMyPage(mvo) ; 
//
//					// 어차피 나의 행하나만 바꾸는거라서 0또는 1의 반환값으로 생각하고 if else만 사용
//				if(result==0) {
//					LOGGER.info("###modifyNO");
//					req.setAttribute("modify", "modifyFailed");
//					
//					return req;
//
//				}else{
//					System.out.println("###modifyOk");
//
//					return req;
//				}
//
//				//마이페이지 정보수정 전 비밀번호 확인		
//			case "usermemberpwCheckOk":		
//				
//				System.out.println((String)req.getParameter("user_pw"));
//				
//				//비밀번호가 틀리면 에러화면이 뜨는데 그 처리를 여기서 해주는지 다음 화면에서 해주는지 .. 
//				mvo =(UserMemberVO)map.get("mvo");
//				mvo.setUser_id((String)req.getSession().getAttribute("user_id"));
//				mvo.setUser_pw((String)req.getParameter("user_pw"));
//				
//				LOGGER.info("(String)req.getSession().getAttribute(\"user_id\") : "+(String)req.getSession().getAttribute("user_id"));
//				
//				
//				UserMemberVO uvo = mapper.pwCheckOk(mvo);
//				if(uvo==null) {
//					LOGGER.info("비밀번호 틀림");
//					req.setAttribute("user_pw", "pwfailed");
//					
//					return req;
//					
//				}else{
//					LOGGER.info("비밀번호 okok");
//					
//					return req;			
//				}
//			
//				
//				
//				//마이페이지 비밀번호 변경 처리	
//			case "usermemberpwModifyReg":	
//				
//				mvo =(UserMemberVO)map.get("mvo"); //폼에서 입력한 값 가져옴 
//				
//				mvo.setUser_id((String)req.getSession().getAttribute("user_id"));
////				mvo.setPw((String)req.getParameter("pw"));
//				
//				result = mapper.pwModify(mvo) ; 
//				
//				if(result==0) {
//					LOGGER.info("###modifyNO");
//					req.setAttribute("modify", "modifyFailed");
//					
//					return req;
//
//				}else{
//					System.out.println("###modifyOk");
//
////					return mapper.mypage((String)req.getSession().getId());
//					return req;
//				}
//				
//				
//				
//				
//				
//				
//				
//				
//				
//				
//				
//			default:
//				break;	
//		}//switch끝
//		
//		
//		return null;
//	}//execute 끝
//	
//	
//
//}//UserMemberService 끝
//
////Select - Select문에 해당하는결과
////Insert - 1 (여러개일경우도 1)
////Update - Update된 행의 개수 반환 (없다면 0)
////delete - Delete된 행의개수 (없다면 0)