package com.korea.health.admin.model.reservation;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.admin.model.branch.BranchVO;
import com.korea.health.admin.model.trainer.TrainerVO;
import com.korea.health.provider.Action;
import com.korea.health.service.Pagenation;
@Service("admin_page_reservation")
public class ReservationService implements Action{
	
	@Resource
	ReservationMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest request) {
		
		ReservationVO rvo = (ReservationVO)map.get("reservVo");

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
			int re_no = rvo.getRe_no();
			return mapper.reservationDetail(re_no);
			
		case "delete":
			System.out.println("switch case : delete에 들어왔다.");
			
			String lo_no2 = request.getParameter("lo_no");
			re_no = rvo.getRe_no();
			
			int cnt = mapper.reservationDelete(rvo);
			if (cnt == 0) {
				return mapper.reservationDetail(re_no);
			}
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
		}
		return null;
	}
}
