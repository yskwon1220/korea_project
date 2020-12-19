package com.korea.health.admin.model.fnq;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.fnq.FnqPageInfo;
import com.korea.health.user.model.fnq.FnqboardMapper;
import com.korea.health.user.model.fnq.FnqboardVO;


// trainer 들어왔을 때 액션들 집합
@Service("admin_page_fnq")	// providerController에서 bean 만들어줄때 이름
public class FnqService implements Action {

	@Resource
	FnqboardMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		FnqboardVO ovo = (FnqboardVO) map.get("ovo");
		FnqPageInfo fnqInfoVo = (FnqPageInfo) map.get("fnqInfoVo");
		System.out.println("execute에 들어온건? " + map.get("service"));
		switch ((String)map.get("service")) {
		case "info":
			System.out.println("switch case : info에 들어왔다.");
			fnqInfoVo.init(mapper.totalCnt());
			 System.out.println();
			 fnqInfoVo.setVoArr(mapper.fnqList(fnqInfoVo));
			 System.out.println("너 왔니? " + fnqInfoVo.getVoArr().size());
			 for(int index = 0; index < fnqInfoVo.getVoArr().size(); index++) {
				 System.out.println(fnqInfoVo.getVoArr().get(index) + "==========");
			 }
			return fnqInfoVo;
		case "detail":
			return mapper.detail(ovo.board_no);
		case "insert":
			return null;
		case "insertReg":
			System.out.println(ovo);
			mapper.insert(ovo);
			return "detail?notice_no=" + ovo.getBoard_no();
		case "modify":
			return mapper.detail(ovo.board_no);
		case "modifyReg":	
			mapper.detail(ovo.board_no);
			System.out.println("잘 되고있는거 맞지!?" + mapper.detail(ovo.board_no));
			mapper.modify(ovo);
			return "detail?notice_no=" + ovo.getBoard_no();	
		case "delete":
			System.out.println(mapper.delete(ovo.getBoard_no()));
			mapper.delete(ovo.getBoard_no());
			return "info";
		case "reply":
			return mapper.detail(ovo.board_no);
		case "replyReg":	
			mapper.reply(ovo);
			return "detail?board_no=" + ovo.getBoard_no();
		}
		return null;
	}

}
