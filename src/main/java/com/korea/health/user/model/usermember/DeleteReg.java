package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("usermemberdeleteReg")
public class DeleteReg implements Action {
//
	private static final Logger LOGGER = LoggerFactory.getLogger(DeleteReg.class);

	@Resource
	UserMemberMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("usermember/deleteReg execute() 실행");

		UserMemberVO mvo = (UserMemberVO) map.get("mvo"); // 폼에서 입력한 값 가져옴

		mvo.setUser_id((String) req.getSession().getAttribute("user_id"));
		mvo.setUser_pw(req.getParameter("user_pw"));

		LOGGER.info((String) req.getSession().getAttribute("user_id"));
		LOGGER.info(req.getParameter("user_pw"));

		Integer result = mapper.delete(mvo);

		LOGGER.info(String.valueOf(result));
		
		if (result == 1) {
			LOGGER.info("delete ok");
			req.setAttribute("delete", "deleteOk");
			req.getSession().invalidate();
			return req;
		} else {
			LOGGER.info("delete 안됨");
			req.setAttribute("delete", "deletefailed");
			return req;

		}
	}
}
