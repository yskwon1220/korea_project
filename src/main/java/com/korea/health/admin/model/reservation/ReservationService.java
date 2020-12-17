package com.korea.health.admin.model.reservation;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.admin.model.branch.BranchVO;
import com.korea.health.provider.Action;
import com.korea.health.service.Pagenation;
@Service("admin_page_reservation")
public class ReservationService implements Action{
	
	@Resource
	ReservationMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest request) {
		
		//BranchVO bvo = (BranchVO)map.get("brVO");
		ReservationVO rvo = (ReservationVO)map.get("rvo");
		Pagenation pageCtl = (Pagenation)map.get("pageCtl");
		
		switch ((String)map.get("service")) {
		
		
		
		case "info":
			System.out.println("switch case : info에 들어왔다.");
			System.out.println(mapper.branchList());
			return mapper.branchList();

			
			
			
		case "list":
			String lo_no = request.getParameter("lo_no");
			System.out.println("lo_no : " + lo_no);
			System.out.println("switch case : list에 들어왔다.");
			
			int listCnt = (int)mapper.totalCnt(lo_no);
			int page = (int)map.get("page");
			int range = (int)map.get("range");
			System.out.println("전체 컬럼 수 : " + listCnt);
			pageCtl.pageInfo(page, range, listCnt);
			pageCtl.setLocationNo(lo_no);
			
			pageCtl.setReservSet(mapper.reservationList(pageCtl));
			
			return pageCtl;
			
			
			
			
		case "detail":
			System.out.println("switch case : detail에 들어왔다.");
			request.setAttribute("re_no", Integer.parseInt(request.getParameter("re_no")));
			int re_no = Integer.parseInt(request.getParameter("re_no"));
			rvo.setRe_no(re_no);
			return mapper.reservationDetail(Integer.parseInt(request.getParameter("re_no")));
			
			
			
			
		case "delete":
			System.out.println("switch case : delete에 들어왔다.");
			
			re_no =  Integer.parseInt(request.getParameter("re_no"));
			rvo.setRe_no(re_no);
			
			
			if(mapper.reservationDelete(rvo) == 0) {
				return mapper.reservationDetail(re_no);
			}
			
			//뭔지몰라서 주석했는데 굳이안해도될거같아요 오빠 확인좀요
			/*
				mapper.newNum(rvo);
				int listCnt2 = (int)mapper.totalCnt(lo_no2);
				int page2 = (int)map.get("page");
				int range2 = (int)map.get("range");
				System.out.println("전체 컬럼 수 : " + listCnt2);
				System.out.println("전체 컬럼 수 : " + listCnt2);
			System.out.println("전체 컬럼 수 : " + listCnt2);
			pageCtl.pageInfo(page2, range2, listCnt2);
			
			pageCtl.setReservSet(mapper.reservationList(pageCtl));
			
			return pageCtl;
			 */
			
			
			
			
		case "modifyForm":
			System.out.println("switch case : modfifyForm에 들어왔다.");
			System.out.println("lo_no있으세요?ㅋㅋ" + request.getParameter("lo_no"));
			System.out.println("re_no있으세요?ㅋㅋ" + request.getParameter("re_no"));

			return mapper.reservationDetail(Integer.parseInt(request.getParameter("re_no")));
			
			
			
			
		case "modify":
			System.out.println("switch case : modfify에 들어왔다.");
			System.out.println("lo_no있으세요?ㅋㅋ" + request.getParameter("lo_no"));
			System.out.println("re_no있으세요?ㅋㅋ" + request.getParameter("re_no"));

			re_no =  Integer.parseInt(request.getParameter("re_no"));
			rvo.setRe_no(re_no);

			mapper.reservationModify(rvo);
			//return mapper.reservationDetail(rvo.getRe_no());
			return mapper.branchList();
			
			
			
		case "insertForm":
			System.out.println("switch case : insertForm에 들어왔다.");
			System.out.println("lo_no있으세요?ㅋㅋ" + request.getParameter("lo_no"));
			System.out.println("re_no있으세요?ㅋㅋ" + request.getParameter("re_no"));
			return null;


			
		case "insert":
			System.out.println("switch case : insert에 들어왔다.");
			System.out.println("lo_no있으세요?ㅋㅋ" + request.getParameter("lo_no"));
			System.out.println("re_no있으세요?ㅋㅋ" + request.getParameter("re_no"));

			mapper.reservationInsert(rvo);

			//return mapper.reservationDetail(Integer.parseInt(request.getParameter("re_no")));
			return mapper.branchList();
			
			
		default:
			break;
			
			
		}
		return null;
	}
}
