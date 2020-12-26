package com.korea.health.admin.model.result;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.service.Pagenation;

@Mapper
public interface ResultMapper {
	
	List<ResultVO> totalList(Pagenation pagenation);
	Integer calcTotal();
	
	List<ResultVO> branchList(Pagenation pagenation);
	Integer calcBranch(String lo_no);
	
	List<ResultVO> userPaymentList(Pagenation pagenation);
	
	ResultVO paymentDetail(String payment_no);
	Integer originPay(String goods_no);
	
	String findUser(int user_no);
	
	Integer deleteResult(ResultVO vo);
	Integer newNum(ResultVO vo);
	
	Integer totalCnt();
	Integer locationCnt(String lo_no);
	Integer userCnt(int user_no);
	
}
