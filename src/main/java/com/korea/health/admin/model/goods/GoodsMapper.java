package com.korea.health.admin.model.goods;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface GoodsMapper {
	List<GoodsVO> goodsList();
}
