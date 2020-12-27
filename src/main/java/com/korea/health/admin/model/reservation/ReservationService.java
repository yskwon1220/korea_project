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
import com.korea.health.user.model.usermember.UserMemberVO;
@Service("admin_page_reservation")
public class ReservationService implements Action{
	
	@Resource
	ReservationMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest request) {
		
		BranchVO bvo = (BranchVO)map.get("bvo");
		Pagenation pageCtl = (Pagenation)map.get("pageCtl");
		ReservationVO rvo = (ReservationVO)map.get("rvo");
		//ResTimeVO timevo = (ResTimeVO)map.get("timevo");
		ReservationTimeVO timevo2 = (ReservationTimeVO)map.get("timevo2");
		int listCnt;
		
		switch ((String)map.get("service")) {
		
		case "info":
			System.out.println("switch case : info에 들어왔다.");
			System.out.println(mapper.branchList());
			return mapper.branchList();
			
		case "resinfo":
			System.out.println("switch case : timeinfo에 들어왔다.");
			System.out.println(mapper.branchList());
			return mapper.branchList();
			
		case "list":
			System.out.println("switch case : list에 들어왔다.");
			String lo_no = request.getParameter("lo_no");
			rvo.setLo_no(lo_no);
			
			System.out.println("너님 누구? lo_no : " + lo_no);
			
			int page = (int)map.get("page");
			int range = (int)map.get("range");
			
			//혜지가 추가한 검색 부분!!
			pageCtl.setLocationNo(lo_no);
			
			//혜지가 추가한 검색 부분!!
				System.out.println("전체list mapper에 들어옴");
				listCnt = (int)mapper.totalCnt(lo_no);
				System.out.println("전체 컬럼 수 : " + listCnt);
				pageCtl.pageInfo(page, range, listCnt);
				pageCtl.setReservSet(mapper.reservationList(pageCtl));

				return pageCtl;
			
		case "searchList":
			System.out.println("switch case : searchList에 들어왔다.");
			lo_no = request.getParameter("lo_no");
			rvo.setLo_no(lo_no);
			
			System.out.println("너님 누구? lo_no : " + lo_no);
			
			page = (int)map.get("page");
			range = (int)map.get("range");
			
			//혜지가 추가한 검색 부분!!
			String keyField = request.getParameter("keyField");
			String keyWord = request.getParameter("keyWord");
			
			pageCtl.setLocationNo(lo_no);
			
			//혜지가 추가한 검색 부분!!
				System.out.println("검색 mapper에 들어옴");
				pageCtl.setKeyField(keyField);
				pageCtl.setKeyWord(keyWord);
				listCnt = (int)mapper.searchCnt(pageCtl);
				System.out.println("전체 검색 컬럼 수 : " + listCnt);
				System.out.println("keyfield : " + keyField);
				System.out.println("keyword : " + keyWord);
				pageCtl.pageInfo(page, range, listCnt);
				pageCtl.setReservSet(mapper.listAll(pageCtl));
				System.out.println(pageCtl);
		
				return pageCtl;
			
		case "reslist":
			
			System.out.println("switch case : reslist에 들어왔다.");
			lo_no = request.getParameter("lo_no");
			timevo2.setLo_no(lo_no);
			
			System.out.println("너님 누구? lo_no : " + lo_no);
			
			int respage = (int)map.get("page");
			int resrange = (int)map.get("range");
			
			pageCtl.setLocationNo(lo_no);
			
				System.out.println("res전체list mapper에 들어옴");
				int reslistCnt = (int)mapper.resTotalCnt(lo_no);
				
				System.out.println("전체 컬럼 수 : " + reslistCnt);
				
				pageCtl.pageInfo(respage, resrange, reslistCnt);
				
				pageCtl.setReservtime2Set(mapper.reservationResList(pageCtl));

				return pageCtl;
				
				
				
		case "searchResList":
			System.out.println("switch case : searchResList에 들어왔다.");
			lo_no = request.getParameter("lo_no");
			timevo2.setLo_no(lo_no);
			
			System.out.println("너님 누구? lo_no : " + lo_no);
			
			respage = (int)map.get("page");
			resrange = (int)map.get("range");
			
			String reskeyField = request.getParameter("keyField");
			String reskeyWord = request.getParameter("keyWord");
			
			pageCtl.setLocationNo(lo_no);
			
				System.out.println("검색res mapper에 들어옴");
				pageCtl.setKeyField(reskeyField);
				pageCtl.setKeyWord(reskeyWord);
				
				reslistCnt = (int)mapper.resSearchCnt(pageCtl);
				System.out.println("전체 검색 컬럼 수 : " + reslistCnt);
				System.out.println("keyfield : " + reskeyField);
				System.out.println("keyword : " + reskeyWord);
				pageCtl.pageInfo(respage, resrange, reslistCnt);
				pageCtl.setReservtime2Set(mapper.reslistAll(pageCtl));
				
				System.out.println(pageCtl);
		
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
			UserMemberVO mvo = (UserMemberVO)map.get("mvo");
			String resdateStr = request.getParameter("resdateStr");
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date resdate;
			try {
				resdate = sdf.parse(resdateStr);
				rvo.setResdate(resdate);
				
				mapper.reservationInsert(rvo);
				//테스트해야하는 부분
				//mapper.MyResMinusCnt(mvo);
				
				/*
				 * int cnt = mapper.selectCount(timevo2); //count(*) 갯수가 0이다
				 * 
				 * if(cnt != 0 ) { mapper.addCount(timevo2); }else { mapper.noCount(timevo2); }
				 */
				
				
			} catch (ParseException e) {
				e.printStackTrace();
			}
			return mapper.branchList();
			
			
			
		default:
			break;
			
			
			
		}
		return null;
	}
}
