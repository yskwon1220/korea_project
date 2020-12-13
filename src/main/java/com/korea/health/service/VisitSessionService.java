package com.korea.health.service;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.springframework.stereotype.Service;

// 로그인 됄때 넣기
// 데이터 빼올때는 보여줄 페이지 들릴때 보기

@Service
public class VisitSessionService implements HttpSessionListener{

	@Resource
	VisitSessionMapper mapper;
	
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		HttpSession session = se.getSession();
		
		session.getId();
		session.getCreationTime();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd hh:mm:ss");
		
		Date date = new Date(session.getCreationTime());
		
		sdf.format(date);
		
		System.out.println("session 생성되었다.");
	}
	
	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		HttpSessionListener.super.sessionDestroyed(se);
	}
	
}
