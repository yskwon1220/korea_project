package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("usermembermodifyMyPageReg")
public class ModifyMyPageReg implements Action {

	@Resource
	UserMemberMapper mapper;

	UserMemberVO mvo;	
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		HttpSession session = req.getSession();

		UserMemberVO uvo =(UserMemberVO)map.get("mvo");
		uvo.setId((String)session.getAttribute("id"));
		String id =(String)session.getAttribute("id");

		System.out.println("#####1");
		System.out.println(id);

		
		
//		UserMemberVO uvo =(UserMemberVO)map.get("mvo");
		System.out.println("usermembermodifyMyPageReg Service : "+uvo);
		System.out.println(uvo.getId()+" "+uvo.getName()+" "+uvo.getTel()+" "+uvo.getPw());
		
		Integer a = mapper.modifyMyPage(uvo) ; //인서트 업데이트 딜리트는 resulttype이 없고 행의갯수의 결과가 숫자로 나옴 1이 나오면 성공임 (업뎃되는 행의 숫자가 나옴) 
		
		
		
		if(a==0) {
			System.out.println("### 수정 X");
			req.setAttribute("modify", "modifyFailed");
			return req;

		}else if(a==1) {
			System.out.println("###modifyOk");
			req.setAttribute("modify", "modifySuccess");
//		return req;
			return mapper.mypage(id);
			
		}
		

return null;

	}

}