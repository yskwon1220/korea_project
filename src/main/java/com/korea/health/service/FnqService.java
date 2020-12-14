package com.korea.health.service;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.fnq.FnqPageInfo;
import com.korea.health.user.model.fnq.FnqboardMapper;
import com.korea.health.user.model.fnq.FnqboardVO;

@Service("fnq")
public class FnqService implements Action {

	int detailNum;
	
	
	
	
	@Resource
	FnqboardMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		FnqboardVO ovo = (FnqboardVO) map.get("ovo");
		FnqPageInfo fnqInfoVo = (FnqPageInfo) map.get("fnqInfoVo");
		switch ((String) map.get("service")) {
		case "fnqonelist":
			fnqInfoVo.init(mapper.totalCnt());
			fnqInfoVo.setVoArr(mapper.fnqList(fnqInfoVo));
			return fnqInfoVo;
		case "fnqonedetail":
			return mapper.detail(ovo.board_no);
		case "fnqoneinsert":
			return null;
		case "fnqoneinsertReg":
			System.out.println(ovo);
			mapper.insert(ovo);
			return "onedetail?board_no=" + ovo.getBoard_no();
		case "fnqonemodify":
			return mapper.detail(ovo.board_no);
		case "fnqonemodifyReg":	
			mapper.detail(ovo.board_no);
			System.out.println("잘 되고있는거 맞지!?" + mapper.detail(ovo.board_no));
			mapper.modify(ovo);
			return "onedetail?board_no=" + ovo.getBoard_no();	
		case "fnqonedelete":
			System.out.println(mapper.delete(ovo.getBoard_no()));
			mapper.delete(ovo.getBoard_no());
			return "onelist";
		}
		return null;
	}

}