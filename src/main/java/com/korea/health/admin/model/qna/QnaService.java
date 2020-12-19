package com.korea.health.admin.model.qna;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.qna.QnaMapper;
import com.korea.health.user.model.qna.QnaPageInfo;
import com.korea.health.user.model.qna.QnaVO;

// trainer 들어왔을 때 액션들 집합
@Service("admin_page_qna")	// providerController에서 bean 만들어줄때 이름
public class QnaService implements Action {

	@Resource
	QnaMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		QnaVO qvo = (QnaVO) map.get("qvo");
		QnaPageInfo infoqnaVo = (QnaPageInfo) map.get("infoqnaVo");
		System.out.println("execute에 들어온건? " + map.get("service"));
		switch ((String)map.get("service")) {
		case "info":
			System.out.println("switch case : info에 들어왔다.");
			 infoqnaVo.init(mapper.totalCnt());
			 System.out.println();
			 infoqnaVo.setVoArr(mapper.qnaList(infoqnaVo));
			 System.out.println("너 왔니? " + infoqnaVo.getVoArr().size());
			 for(int index = 0; index < infoqnaVo.getVoArr().size(); index++) {
				 System.out.println(infoqnaVo.getVoArr().get(index) + "==========");
			 }
			return infoqnaVo;
		case "detail":
			return mapper.detail(qvo.qna_no);
		case "insert":
			return null;
		case "insertReg":
			System.out.println(qvo);
			mapper.insert(qvo);
			return "detail?qna_no=" + qvo.getQna_no();
		case "modify":
			return mapper.detail(qvo.qna_no);
		case "modifyReg":	
			mapper.detail(qvo.qna_no);
			System.out.println("잘 되고있는거 맞지!?" + mapper.detail(qvo.qna_no));
			mapper.modify(qvo);
			return "detail?qna_no=" + qvo.getQna_no();	
		case "delete":
			System.out.println(mapper.delete(qvo.getQna_no()));
			mapper.delete(qvo.getQna_no());
			return "info";
		}
		return null;
	}

}
