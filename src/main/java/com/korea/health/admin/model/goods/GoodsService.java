package com.korea.health.admin.model.goods;

import java.io.File;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.admin.model.branch.BranchVO;
import com.korea.health.provider.Action;
@Service("admin_page_goods")
public class GoodsService implements Action{
	
	@Resource
	GoodsMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest request) {
		
		GoodsVO vo = (GoodsVO)map.get("goodsVO");
		
		switch ((String)map.get("service")) {
		case "info":
			System.out.println("switch case : info에 들어왔다.");
			return mapper.goodsList();
		
		case "insertForm":
			System.out.println("switch case : insertForm에 들어왔다.");
			return mapper.goodsCnt();
			
		case "insert":
			System.out.println("switch case : insert에 들어왔다.");
			System.out.println(vo);
			
			mapper.goodsInsert(vo);
			return mapper.goodsList();

		case "modifyForm":
			System.out.println("switch case : modifyForm에 들어왔다.");
			System.out.println(vo);
			return mapper.goodsDetail(Integer.parseInt(request.getParameter("goods_cnt")));
		
		case "modify":
			System.out.println("switch case : modify에 들어왔다.");
			System.out.println(vo);
				
			mapper.goodsModify(vo);
			return mapper.goodsDetail(vo.getGoods_cnt());
				
		case "delete":
			System.out.println("switch case : delete에 들어왔다.");
			
			int cnt = mapper.goodsDelete(vo);
			mapper.newNum(vo);
			
			if(cnt == 0) {
				return mapper.goodsDetail(Integer.parseInt(request.getParameter("goods_cnt")));
			}else {
				return null;
			}
			
		default:
			break;
		}
		return null;
	}
}
