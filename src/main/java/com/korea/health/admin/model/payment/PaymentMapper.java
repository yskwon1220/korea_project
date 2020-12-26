package com.korea.health.admin.model.payment;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.admin.model.result.ResultVO;
import com.korea.health.service.Pagenation;

@Mapper
public interface PaymentMapper {
	
	Integer monthlyPayment(String startDate, String endDate);
	
	List<ResultVO> monthList(Pagenation pagenation);
	
	Integer monthCnt(String startDate, String endDate);
	
	String findUser(int user_no);
	
}
