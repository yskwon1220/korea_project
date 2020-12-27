package com.korea.health.user.model.qna;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface QnaMapper {
	List<QnaVO> qnaList(QnaPageInfo infoqnaVo);
//	List<QnaVO> qnaList();
	Integer totalCnt();
	List<QnaVO> listSch(QnaVO vo);
	void deleteNum(QnaVO vo);
	int updateCnt(int qna_no);
	QnaVO detail(int qna_no);
	void insert(QnaVO vo);
	int modify(QnaVO vo);
	boolean delete(int qna_no);
}
