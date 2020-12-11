package com.korea.health.user.model.qna;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface QnaMapper {
	List<QnaVO> qnaList();
	List<QnaVO> listSch(QnaVO vo);
	
	QnaVO detail(int qna_no);
}
