package com.korea.health.admin.model.goods;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
@Service("admin_page_goods")
public class GoodsService implements Action{
	
	@Resource
	GoodsMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		switch ((String)map.get("service")) {
		case "info":
			System.out.println("switch case : info에 들어왔다.");
			return mapper.goodsList();
		default:
			break;
		}
		return null;
	}
}
