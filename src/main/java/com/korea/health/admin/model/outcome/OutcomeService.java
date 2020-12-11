package com.korea.health.admin.model.outcome;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
@Service("admin_page_outcome")
public class OutcomeService implements Action{
	
	@Resource
	OutcomeMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		return null;
	}
}
