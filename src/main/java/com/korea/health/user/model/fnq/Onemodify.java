package com.korea.health.user.model.fnq;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;





@Service("fnqonemodify")
public class Onemodify implements Action {

	
	
	@Resource
	FnqboardMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		String user_id = (String) req.getSession().getAttribute("user_id");
		FnqboardVO ovo = (FnqboardVO) map.get("ovo");
		FnqPageInfo fnqInfoVo = (FnqPageInfo) map.get("fnqInfoVo");
		
		return mapper.detail(ovo.board_no);
	}
}
