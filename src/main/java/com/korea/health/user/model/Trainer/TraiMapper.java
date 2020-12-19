
package com.korea.health.user.model.Trainer;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TraiMapper {

	List<TrainerVO> detail(String lo_no);
	
	List<TrainerVO> list();
	
}
