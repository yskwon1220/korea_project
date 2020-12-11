
package com.korea.health.user.model.Trai;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TraiMapper {

	List<TraiVO> detail(String no);
	
}
