package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("usermembermodifyMyPageReg")
public class ModifyMyPageReg implements Action {

	private static final Logger LOGGER = LoggerFactory.getLogger(ModifyMyPageReg.class);

	@Resource
	UserMemberMapper mapper;

		
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		
		
		UserMemberVO mvo =(UserMemberVO)map.get("mvo"); //폼에서 입력한 값 가져옴  

		LOGGER.info("usermembermodifyMyPageReg Service : "+mvo.toString());


//		Select - Select문에 해당하는결과
//		Insert - 1 (여러개일경우도 1)
//		Update - Update된 행의 개수 반환 (없다면 0)
//		delete - Delete된 행의개수 (없다면 0)
		Integer result = mapper.modifyMyPage(mvo) ; 

// 어차피 나의 행하나만 바꾸는거라서 0또는 1의 반환값으로 생각하고 if else만 사용
		if(result==0) {
			LOGGER.info("###modifyNO");
			req.setAttribute("modify", "modifyFailed");
			
			return req;

		}else{
			System.out.println("###modifyOk");

//			return mapper.mypage((String)req.getSession().getId());
			return req;
		}


	}

}