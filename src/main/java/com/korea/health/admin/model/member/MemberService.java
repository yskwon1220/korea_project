package com.korea.health.admin.model.member;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.service.Pagenation;
import com.korea.health.user.model.usermember.MyPage;
import com.korea.health.user.model.usermember.UserMemberVO;

// dashboard : 방문자 정보 , 예약 정보, 고객문의 정보
@Service("admin_page_member")
public class MemberService implements Action {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(MemberService.class);

	@Resource
	MemberMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		LOGGER.info("execute에 들어온건? " + map.get("service"));
				
		Pagenation pageCtl = (Pagenation) map.get("pageCtl");
		
		LOGGER.info("pageCtl : "+pageCtl);
		
		

		UserMemberVO mvo = (UserMemberVO) map.get("mvo");
		
		LOGGER.info("mvo" + mvo);

		switch ((String) map.get("service")) {
		case "info":

			LOGGER.info("switch case : info에 들어왔다.");

			int listCnt = (int) mapper.totalCnt();
			int page = (int) map.get("page");
			int range = (int) map.get("range");

			LOGGER.info("전체 페이지 수 : " + listCnt);

			pageCtl.pageInfo(page, range, listCnt);

			pageCtl.setUserSet(mapper.memberList(pageCtl));

			return pageCtl;

		case "detail":

			LOGGER.info("switch case : detail에 들어왔다.");
			int user_no = Integer.parseInt(req.getParameter("user_no"));
			req.setAttribute("user_no", user_no);

			LOGGER.info("mapper.memberDetail(user_no) : "+mapper.memberDetail(user_no));

			return mapper.memberDetail(user_no);

		case "deleteReg":

			LOGGER.info("switch case : delete에 들어왔다.");
			int cntDelete = mapper.memberDelete(Integer.parseInt(req.getParameter("user_no")));
			if (cntDelete == 0) { // 삭제가 안되면

				LOGGER.info("삭제에 실패했습니다.");
				req.setAttribute("delete", "deleteFailed");
				return mapper.memberDetail(Integer.parseInt(req.getParameter("user_no")));
			} else {
				LOGGER.info("+++delete success!!");
				req.setAttribute("delete", "deleteOk");
				return req;
			}

		case "modifyAdmin":
			LOGGER.info("switch case : modifyAdmin에 들어왔다.");
			System.out.println((UserMemberVO) map.get("mvo"));
			LOGGER.info("mvo : "+mvo);
			mvo = (UserMemberVO) map.get("mvo");

			int cntModify = mapper.modifyAdmin(Integer.parseInt(req.getParameter("user_no")));
			if (cntModify == 0) { // 등업이 안되면
				LOGGER.info("등업에 실패했습니다.");
				req.setAttribute("modify", "modifyfailed");
				return mapper.memberDetail(Integer.parseInt(req.getParameter("user_no")));
			
			} else {
				req.setAttribute("modify", "modifySuccess");
				LOGGER.info("등업에 성공했습니다.");
				return mapper.memberDetail(Integer.parseInt(req.getParameter("user_no")));
			}

		case "modifyUser":
			LOGGER.info("switch case : modifyUser에 들어왔다.");
			LOGGER.info("mvo"+(UserMemberVO) map.get("mvo"));
			mvo = (UserMemberVO) map.get("mvo");

			int cntModifyuser = mapper.modifyUser(Integer.parseInt(req.getParameter("user_no")));
			if (cntModifyuser == 0) { // 등업이 안되면
				LOGGER.info("변경 실패했습니다.");
				req.setAttribute("modify", "modifyfailed");
				return mapper.memberDetail(Integer.parseInt(req.getParameter("user_no")));
			} else {
				req.setAttribute("modify", "modifySuccess");
				LOGGER.info("변경 성공했습니다.");
				return mapper.memberDetail(Integer.parseInt(req.getParameter("user_no")));
			}

		default:
			break;
		}
		return null;
	}
}
