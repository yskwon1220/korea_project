package com.korea.health.admin.model.payment;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.admin.model.result.ResultVO;
import com.korea.health.provider.Action;
import com.korea.health.service.Pagenation;
@Service("admin_page_payment")
public class PaymentService implements Action{
	
	@Resource
	PaymentMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest request) {
		
		ResultVO rvo = (ResultVO)map.get("resultVO");
		Pagenation pageCtl = (Pagenation)map.get("pageCtl");
		int page = (int)map.get("page");
		int range = (int)map.get("range");
		
		ArrayList<String> arList = new ArrayList<String>();
		ArrayList<Integer> chartList = new ArrayList<Integer>();
		HashMap<String, Object> temp = new HashMap<String, Object>();
		
		switch ((String)map.get("service")) {
		case "info":
			
			System.out.println("switch case : info에 들어왔다.");
			String startDate;
			String endDate;
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			DecimalFormat fmt = new DecimalFormat("###,###");
			
			int year = (int)map.get("year");
//			int year = 2020;
			
			System.out.println(year);
			
			for (int i = 1; i <= 12; i++) {
				startDate = sdf.format(new Date(year-1900, i-1, 1));
				endDate = sdf.format(new Date(year-1900, i, 0));
				System.out.println("startDate : " + startDate);
				System.out.println("endDate : " + endDate);
				chartList.add(mapper.monthlyPayment(startDate, endDate));
				
				String result = fmt.format(mapper.monthlyPayment(startDate, endDate));
				
				arList.add(result);
			}
			
			int month = (int)map.get("month");
			
			startDate = sdf.format(new Date(year-1900, month-1, 1));
			endDate = sdf.format(new Date(year-1900, month, 0));
			
			int listCnt = (int)mapper.monthCnt(startDate, endDate);
			
			pageCtl.pageInfo(page, range, listCnt);
			
			pageCtl.setMonth(String.valueOf(month));
			pageCtl.setYear(String.valueOf(year));
			pageCtl.setStartDate(startDate);
			pageCtl.setEndDate(endDate);
			pageCtl.setResultSet(mapper.monthList(pageCtl));
			
			for (ResultVO vo : pageCtl.getResultSet()) {
				vo.setUser_name(mapper.findUser(vo.getUser_no()));
			}
			
			temp.put("pageCtl", pageCtl);
			temp.put("chartList", chartList);
			temp.put("monthPay", arList);
			
			return temp;
			
		default:
			break;
		}
		return null;
	}
}
