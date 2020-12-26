package com.korea.health.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Service
public class UserChk extends HandlerInterceptorAdapter{

	 @Override
	    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
	            throws Exception {
	        
	        
	        
	        System.out.println("UserChk preHandle() 진입");
	        
	        
	        
			
			Object user = request.getSession().getAttribute("user_id");
			if(user == null) {
				response.sendRedirect("/main"); //세션이 비어있다면 여기로보내기
				return false;
			}
			
			return true;
	    }
	
}
