package com.korea.health.admin.model.income;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
@Service("admin_page_income")
public class IncomeService implements Action{
	
	@Resource
	IncomeMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		return null;
	}
}
