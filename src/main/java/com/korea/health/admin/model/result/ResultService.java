package com.korea.health.admin.model.result;

import java.util.HashMap;
import java.util.Iterator;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.service.Pagenation;
@Service("admin_page_result")
public class ResultService implements Action{
	
	@Resource
	ResultMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest request) {
			
		ResultVO rvo = (ResultVO)map.get("resultVO");
		Pagenation pageCtl = (Pagenation)map.get("pageCtl");
		int page = (int)map.get("page");
		int range = (int)map.get("range");
		
		switch ((String)map.get("service")) {
		case "total":
			System.out.println("switch case : total에 들어왔다.");
			System.out.println("전체 예약 컬럼 : " + (int)mapper.totalCnt());
			
			int listCnt = (int)mapper.totalCnt();
			
			pageCtl.pageInfo(page, range, listCnt);
			
			pageCtl.setTotalPayment(mapper.calcTotal());
			pageCtl.setResultSet(mapper.totalList(pageCtl));
			
			for (ResultVO vo : pageCtl.getResultSet()) {
				vo.setUser_name(mapper.findUser(vo.getUser_no()));
			}
			
			return pageCtl;
			
		case "branch":
			System.out.println("switch case : branch에 들어왔다.");
			System.out.println("전체 예약 컬럼 : " + (int)mapper.totalCnt());
			String lo_no = request.getParameter("lo_no");
			
			listCnt = (int)mapper.locationCnt(lo_no);
			
			pageCtl.setLocationNo(lo_no);
			
			pageCtl.pageInfo(page, range, listCnt);
			
			pageCtl.setTotalPayment(mapper.calcBranch(lo_no));
			pageCtl.setResultSet(mapper.branchList(pageCtl));
			
			for (ResultVO vo : pageCtl.getResultSet()) {
				vo.setUser_name(mapper.findUser(vo.getUser_no()));
			}
			
			return pageCtl;
			
		case "paymentdetail":
			System.out.println("switch case : paymentdetail에 들어왔다.");
			String payment_no = request.getParameter("payment_no");
			
			rvo = mapper.paymentDetail(payment_no);
			rvo.setUser_name(mapper.findUser(rvo.getUser_no()));
			rvo.setPrice(mapper.originPay(rvo.getGoods_no()));
			return rvo;
		
		case "userpayment":
			System.out.println("switch case : userpayment에 들어왔다.");
			System.out.println("전체 예약 컬럼 : " + (int)mapper.totalCnt());
			int user_no = Integer.parseInt(request.getParameter("user_no"));
			
			listCnt = (int)mapper.userCnt(user_no);
			
			pageCtl.setUser_no(user_no);
			
			pageCtl.pageInfo(page, range, listCnt);
			
			pageCtl.setResultSet(mapper.userPaymentList(pageCtl));
			
			for (ResultVO vo : pageCtl.getResultSet()) {
				vo.setUser_name(mapper.findUser(vo.getUser_no()));
			}
			
			return pageCtl;
			
		case "delete":
			System.out.println("switch case : delete에 들어왔다.");
			payment_no = request.getParameter("payment_no");
			int cnt = mapper.deleteResult(rvo);
			
			if(cnt == 0) {
				rvo = mapper.paymentDetail(payment_no);
				rvo.setUser_name(mapper.findUser(rvo.getUser_no()));
				return rvo;
			}else {
				mapper.newNum(rvo);
				return null;
			}
		default:
			break;
		}
		return null;
	}
}
