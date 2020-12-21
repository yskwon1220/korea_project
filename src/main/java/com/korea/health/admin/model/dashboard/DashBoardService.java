package com.korea.health.admin.model.dashboard;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.admin.model.reservation.ReservationVO;
import com.korea.health.admin.model.result.ResultVO;
import com.korea.health.provider.Action;
import com.korea.health.user.model.fnq.FnqboardVO;
// dashboard : 방문자 정보 , 예약 정보, 고객문의 정보
@Service("admin_page_home")
public class DashBoardService implements Action{
	
	@Resource
	DashBoardMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest request) {
		
		List<ReservationVO> reservList;
		List<FnqboardVO> faqList;
		List<ResultVO> paymentList;
		ArrayList<Integer> chartList = new ArrayList<Integer>();
		HashMap<String, Object> temp = new HashMap<String, Object>();
		
		switch ((String)map.get("service")) {
		case "dashboard":
			
			System.out.println("switch case : dashboard에 들어왔따.");
			String startDate;
			String endDate;
			int startCnt = 1;
			int endCnt = 5;
			
			String user_name = (String) request.getSession().getAttribute("user_name");
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			DecimalFormat fmt = new DecimalFormat("###,###");
			int year = 2020;
			
			for (int i = 1; i <= 12; i++) {
				startDate = sdf.format(new Date(year-1900, i-1, 1));
				endDate = sdf.format(new Date(year-1900, i, 0));
				
				chartList.add(mapper.monthlyPayment(startDate, endDate));
			}
			
			reservList = mapper.reservationList(startCnt, endCnt);
			faqList = mapper.fnqList(startCnt, endCnt);
			paymentList = mapper.paymentList(startCnt, endCnt);
			
			for (ResultVO vo : paymentList) {
				vo.setUser_name(mapper.findUser(vo.getUser_no()));
			}
			
			temp.put("user_name", user_name);
			temp.put("reservList", reservList);
			temp.put("faqList", faqList);
			temp.put("paymentList", paymentList);
			temp.put("chartList", chartList);
			
			return temp;

		default:
			break;
		}
		
		
		
		return null;
		
	}
}
