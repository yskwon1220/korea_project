package com.korea.health.admin.model.notice;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.notice.NoticeMapper;
import com.korea.health.user.model.notice.NoticePageInfo;
import com.korea.health.user.model.notice.NoticeVO;

// trainer 들어왔을 때 액션들 집합
@Service("admin_page_notice")	// providerController에서 bean 만들어줄때 이름
public class NoticeService implements Action {

	@Resource
	NoticeMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		NoticeVO nvo = (NoticeVO) map.get("nvo");
		NoticePageInfo infonoticeVo = (NoticePageInfo) map.get("infonoticeVo");
		System.out.println("execute에 들어온건? " + map.get("service"));
		switch ((String)map.get("service")) {
		case "info":
			System.out.println("switch case : info에 들어왔다.");
			 infonoticeVo.init(mapper.totalCnt());
			 System.out.println();
			 infonoticeVo.setVoArr(mapper.noticeList(infonoticeVo));
			 System.out.println("너 왔니? " + infonoticeVo.getVoArr().size());

			return infonoticeVo;
		case "detail":
			return mapper.detail(nvo.notice_no);
		case "insert":
			return null;
		case "insertReg":
			System.out.println(nvo);
			mapper.insert(nvo);
			return "detail?notice_no=" + nvo.getNotice_no();
		case "modify":
			return mapper.detail(nvo.notice_no);
		case "modifyReg":	
			mapper.detail(nvo.notice_no);
			System.out.println("잘 되고있는거 맞지!?" + mapper.detail(nvo.notice_no));
			mapper.modify(nvo);
			return "detail?notice_no=" + nvo.getNotice_no();	
		case "delete":
			System.out.println(mapper.delete(nvo.getNotice_no()));
			mapper.deleteNum(nvo);
			mapper.delete(nvo.getNotice_no());
			return "info";
		}
		return null;
	}

}
