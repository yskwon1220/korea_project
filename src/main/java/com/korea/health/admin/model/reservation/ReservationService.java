package com.korea.health.admin.model.reservation;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
		
		BranchVO bvo = (BranchVO)map.get("bvo");
		ReservationVO rvo = (ReservationVO)map.get("rvo");
		Pagenation pageCtl = (Pagenation)map.get("pageCtl");
		ResTimeVO timevo = (ResTimeVO)map.get("timevo");
		
		
		switch ((String)map.get("service")) {
		
		case "info":
			System.out.println("switch case : info에 들어왔다.");
			System.out.println(mapper.branchList());
			return mapper.branchList();
			
			
		case "list":
			
			System.out.println("switch case : list에 들어왔다.");
			String lo_no = request.getParameter("lo_no");
			rvo.setLo_no(lo_no);
			
			request.setAttribute("lo_no", lo_no);
			System.out.println("너님 누구? lo_no : " + lo_no);
			
			int listCnt = (int)mapper.totalCnt(lo_no);
			int page = (int)map.get("page");
			int range = (int)map.get("range");
			System.out.println("전체 컬럼 수 : " + listCnt);
			
			
			
			
			//혜지가 추가한 검색 부분!!
			String keyField = request.getParameter("keyField");
			String keyWord = request.getParameter("keyWord");
			
			
			pageCtl.pageInfo(page, range, listCnt);
			pageCtl.setLocationNo(lo_no);
			
			pageCtl.setKeyField(keyField);
			pageCtl.setKeyWord(keyWord);
			
			
			//혜지가 추가한 검색 부분!!
			if(keyField !=null && keyWord !=null) {
				pageCtl.setReservSet(mapper.listAll(pageCtl));
				
			}else {
				pageCtl.setReservSet(mapper.reservationList(pageCtl));
			}
			return pageCtl;
			
			
		case "reslist":
			
			System.out.println("switch case : reslist에 들어왔다.");
			//lo_no = request.getParameter("lo_no");
			//timevo.setLo_no(lo_no);
			
			//request.setAttribute("lo_no", lo_no);
			//System.out.println("너님 누구? lo_no : " + lo_no);
			
			listCnt = (int)mapper.totalCnt2();
			page = (int)map.get("page");
			range = (int)map.get("range");
			System.out.println("전체 컬럼 수 : " + listCnt);
			
			
			//혜지가 추가한 검색 부분!!
			keyField = request.getParameter("keyField");
			keyWord = request.getParameter("keyWord");
			
			
			pageCtl.pageInfo(page, range, listCnt);
			//pageCtl.setLocationNo(lo_no);
			
			
			pageCtl.setKeyField(keyField);
			pageCtl.setKeyWord(keyWord);
			//혜지가 추가한 검색 부분!!
//			if(keyField !=null && keyWord !=null) {
//				pageCtl.setReservtimeSet(mapper.reslistAll(pageCtl));
//				
//			}else {
//				pageCtl.setReservtimeSet(mapper.reservationresList(pageCtl));
//			}
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

			return mapper.reservationDetail(Integer.parseInt(request.getParameter("re_no")));
			
			
			
		case "modify":
			System.out.println("switch case : modfify에 들어왔다.");

			re_no =  Integer.parseInt(request.getParameter("re_no"));
			rvo.setRe_no(re_no);

			mapper.reservationModify(rvo);
			//return mapper.reservationDetail(rvo.getRe_no());
			return mapper.branchList();
			
			
		case "insertForm":
			System.out.println("switch case : insertForm에 들어왔다.");
			return null;

			
		case "insert":
			System.out.println("switch case : insert에 들어왔다.");
			
			String resdateStr = request.getParameter("resdateStr");
			System.out.println("너님 타입이 뭐세여..?" + request.getParameter("resdateStr").getClass().getName());
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date resdate;
			try {
				resdate = sdf.parse(resdateStr);
				rvo.setResdate(resdate);
				System.out.println("너님은 누구세여..?" + rvo.getResdate().getClass().getName());
				mapper.reservationInsert(rvo);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			//return mapper.reservationDetail(Integer.parseInt(request.getParameter("re_no")));
			return mapper.branchList();
			
			
		default:
			break;
			
			
		}
		return null;
	}
}
