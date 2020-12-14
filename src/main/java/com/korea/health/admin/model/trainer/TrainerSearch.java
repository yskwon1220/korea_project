//package com.korea.health.admin.model.trainer;
//
//import java.io.IOException;
//import java.util.List;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@WebServlet("/TrainerSearch")
//public class TrainerSearch extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html;charset=UTF-8");
//		String tr_name = request.getParameter("tr_name");
//	}
//	
//	public String getJSON(String tr_name) {
//		if(tr_name == null) tr_name = "";
//		StringBuffer result = new StringBuffer("");
//		result.append("{\result\":[");
////		List<TrainerVO> trainerList = mapper.trainerSearch(tr_name);
//		
//		for (int i = 0; i < trainerList.size(); i++) {
//			result.append("[{\"value\" : \"" + trainerList.get(i).getTr_no() + "\"},");
//			result.append("{\"value\" : \"" + trainerList.get(i).getTr_pic() + "\"},");
//			result.append("{\"value\" : \"" + trainerList.get(i).getTr_name() + "\"},");
//			result.append("{\"value\" : \"" + trainerList.get(i).getTr_info() + "\"},");
//			result.append("{\"value\" : \"" + trainerList.get(i).getStars() + "\"},");
//			result.append("{\"value\" : \"" + trainerList.get(i).getLo_no() + "\"},");
//			result.append("{\"value\" : \"" + trainerList.get(i).getIsManage() + "\"}],");
//		}
//		result.append("]}");
//		return result.toString();
//	}
//}
