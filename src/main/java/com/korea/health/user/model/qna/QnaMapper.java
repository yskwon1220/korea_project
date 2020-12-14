package com.korea.health.user.model.qna;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

<<<<<<< HEAD
@Mapper
public interface QnaMapper {
	List<QnaVO> qnaList();
	List<QnaVO> listSch(QnaVO vo);
	
	QnaVO detail(int qna_no);
=======
import com.korea.health.user.model.fnq.FnqPageInfo;
import com.korea.health.user.model.notice.NoticeVO;

@Mapper
public interface QnaMapper {
	List<QnaVO> qnaList(QnaPageInfo infoqnaVo);
//	List<QnaVO> qnaList();
	Integer totalCnt();
	List<QnaVO> listSch(QnaVO vo);
	QnaVO detail(int qna_no);
	void insert(QnaVO vo);
	int modify(QnaVO vo);
	boolean delete(int qna_no);
>>>>>>> refs/remotes/origin/yongseok
}
