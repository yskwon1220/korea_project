package com.korea.health.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Service
public class AdminChk extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		System.out.println("AdminChk preHandle() 진입");

		Object user = request.getSession().getAttribute("user_id");
//	        Object admin = request.getSession().getAttribute("admin");
		String admin = (String) request.getSession().getAttribute("admin");

		if (user != null) { // 로그인이 되어있다.
			if (admin != null) {
				if (!admin.equals("admin")) { // admin이 아닐때.?? . ..
					System.out.println("AdminChk preHandle() 일반사용자");
					response.sendRedirect("/main");
					return false;
				} else {
					return true;
				}
			}

		}

		response.sendRedirect("/main"); // 세션이 비어있다면 여기로보내기
		return false;
	}

}
