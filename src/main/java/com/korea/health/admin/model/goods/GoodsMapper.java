package com.korea.health.admin.model.goods;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface GoodsMapper {
	List<GoodsVO> goodsList();
	
	GoodsVO goodsDetail(int goods_cnt);
	
	Integer goodsInsert(GoodsVO vo);
	
	Integer goodsModify(GoodsVO vo);

	Integer goodsDelete(GoodsVO vo);
	
	Integer newNum(GoodsVO vo);
	
	String goodsCnt();
}
