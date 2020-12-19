package com.korea.health.admin.model.member;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.service.Pagenation;
import com.korea.health.user.model.usermember.UserMemberVO;

// dashboard : 방문자 정보 , 예약 정보, 고객문의 정보
@Service("admin_page_member")
public class MemberService implements Action {

	@Resource
	MemberMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("execute에 들어온건? " + map.get("service"));

		Pagenation pageCtl = (Pagenation) map.get("pageCtl");

		UserMemberVO mvo = (UserMemberVO) map.get("mvo");

		switch ((String) map.get("service")) {
		case "info":
			System.out.println("switch case : info에 들어왔다.");

			int listCnt = (int) mapper.totalCnt();
			int page = (int) map.get("page");
			int range = (int) map.get("range");
			System.out.println("전체 페이지 수 : " + listCnt);

			pageCtl.pageInfo(page, range, listCnt);

			pageCtl.setUserSet(mapper.memberList(pageCtl));

			return pageCtl;

		case "detail":
			System.out.println("switch case : detail에 들어왔다.");
			int user_no = Integer.parseInt(req.getParameter("user_no"));
			req.setAttribute("user_no", user_no);
			System.out.println(mapper.memberDetail(user_no));
			// mapper.memberDetail(customer_no);
			return mapper.memberDetail(user_no);

		case "deleteReg":
			System.out.println("switch case : delete에 들어왔다.");
			int cntDelete = mapper.memberDelete(Integer.parseInt(req.getParameter("user_no")));
			if (cntDelete == 0) { // 삭제가 안되면
				System.out.println("삭제에 실패했습니다.");
				req.setAttribute("delete", "deletefailed");
				return mapper.memberDetail(Integer.parseInt(req.getParameter("user_no")));
			} else {
				req.setAttribute("delete", "deleteOk");
				return mapper.memberList(pageCtl);
				// return mapper.memberList();

			}

		case "modifyAdmin":
			System.out.println("switch case : modifyAdmin에 들어왔다.");
			System.out.println((UserMemberVO) map.get("mvo"));
			mvo = (UserMemberVO) map.get("mvo");

			int cntModify = mapper.modifyAdmin(Integer.parseInt(req.getParameter("user_no")));
			if (cntModify == 0) { // 등업이 안되면
				System.out.println("등업에 실패했습니다.");
				req.setAttribute("modify", "modifyfailed");
				// customer_no = Integer.parseInt(req.getParameter("customer_no"));
				// req.setAttribute("customer_no", customer_no);
				return mapper.memberDetail(Integer.parseInt(req.getParameter("user_no")));
			} else {
				req.setAttribute("modify", "modifySuccess");
				System.out.println("등업에 성공했습니다.");
				// customer_no = Integer.parseInt(req.getParameter("customer_no"));
				// req.setAttribute("customer_no", customer_no);
				return mapper.memberDetail(Integer.parseInt(req.getParameter("user_no")));
			}

		case "modifyUser":
			System.out.println("switch case : modifyUser에 들어왔다.");
			System.out.println((UserMemberVO) map.get("mvo"));
			mvo = (UserMemberVO) map.get("mvo");

			int cntModifyuser = mapper.modifyUser(Integer.parseInt(req.getParameter("user_no")));
			if (cntModifyuser == 0) { // 등업이 안되면
				System.out.println("변경 실패했습니다.");
				req.setAttribute("modify", "modifyfailed");
				// customer_no = Integer.parseInt(req.getParameter("customer_no"));
				// req.setAttribute("customer_no", customer_no);
				return mapper.memberDetail(Integer.parseInt(req.getParameter("user_no")));
			} else {
				req.setAttribute("modify", "modifySuccess");
				System.out.println("변경 성공했습니다.");
				// customer_no = Integer.parseInt(req.getParameter("customer_no"));
				// req.setAttribute("customer_no", customer_no);
				return mapper.memberDetail(Integer.parseInt(req.getParameter("user_no")));
			}

		default:
			break;
		}
		return null;
	}
}
