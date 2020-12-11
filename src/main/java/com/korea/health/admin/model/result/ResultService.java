package com.korea.health.admin.model.result;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
@Service("admin_page_result")
public class ResultService implements Action{
	
	@Resource
	ResultMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		return null;
	}
}
