package com.korea.health.user.model.Location;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.admin.model.goods.GoodsMapper;
import com.korea.health.provider.Action;



@Service("membershipmembership")
public class Membership implements Action{
	
	@Resource
	GoodsMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		return mapper.goodsList();
	}

}
