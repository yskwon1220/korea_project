package com.korea.health.user.model.fnq;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;





@Service("fnqonemodifyReg")
public class OnemodifyReg implements Action {

	
	
	@Resource
	FnqboardMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		String user_id = (String) req.getSession().getAttribute("user_id");
		FnqboardVO ovo = (FnqboardVO) map.get("ovo");
		FnqPageInfo fnqInfoVo = (FnqPageInfo) map.get("fnqInfoVo");
		
		mapper.detail(ovo.board_no);
		System.out.println("잘 되고있는거 맞지!?" + mapper.detail(ovo.board_no));
		mapper.modify(ovo);
		return "onedetail?board_no=" + ovo.getBoard_no();	
	}
}
