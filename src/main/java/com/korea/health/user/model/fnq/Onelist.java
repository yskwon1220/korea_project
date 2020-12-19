package com.korea.health.user.model.fnq;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;





@Service("fnqonelist")
public class Onelist implements Action {

	
	
	@Resource
	FnqboardMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		String user_id = (String) req.getSession().getAttribute("user_id");
		FnqboardVO ovo = (FnqboardVO) map.get("ovo");
		FnqPageInfo fnqInfoVo = (FnqPageInfo) map.get("fnqInfoVo");
		
		
		
		if(user_id==null)
			user_id="";
		fnqInfoVo.setIdentify(user_id);
		fnqInfoVo.init(mapper.totalCnt());
		fnqInfoVo.setVoArr(mapper.fnqList_2(fnqInfoVo));
		return fnqInfoVo;
	}
}
