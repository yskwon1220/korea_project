package com.korea.health.user.controll;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.korea.health.admin.model.goods.GoodsVO;
import com.korea.health.provider.Action;
import com.korea.health.provider.Kind;
import com.korea.health.provider.Myprovider;
import com.korea.health.user.model.Location.LocaMapper;
import com.korea.health.user.model.Location.LocationVO;
import com.korea.health.user.model.Reservation.ResPageInfo;
import com.korea.health.user.model.Reservation.ResTimeVO;
import com.korea.health.user.model.Reservation.ReservationVO;
import com.korea.health.user.model.Trainer.TrainerVO;
import com.korea.health.user.model.fnq.FnqPageInfo;
import com.korea.health.user.model.fnq.FnqboardVO;
import com.korea.health.user.model.notice.NoticePageInfo;
import com.korea.health.user.model.notice.NoticeVO;
import com.korea.health.user.model.qna.QnaPageInfo;
import com.korea.health.user.model.qna.QnaVO;
import com.korea.health.user.model.review.ReviewPagingInfo;
import com.korea.health.user.model.review.ReviewVO;
import com.korea.health.user.model.usermember.UserMemberVO;

@Controller
@RequestMapping("/user_page_/{cate}/{service}")
public class ResController {
	@Resource
	Myprovider provider;

	@Resource
	LocaMapper locaMapper;
	
	@ModelAttribute
	Kind kind(@PathVariable("cate") String cate, @PathVariable("service") String service) {
		Kind kind = new Kind();
		kind.setCate(cate);
		kind.setService(service);
		kind.setMainUrl("user_page_/" + cate + "/" + service + ".jsp");
		return kind;
	}

	@ResponseBody
	@ModelAttribute("data")
	Object mainData(ReservationVO rvo, LocationVO lovo, TrainerVO tvo, ResTimeVO timevo, ResPageInfo resInfoVO,
			ReviewVO rrvo, ReviewPagingInfo infoVo,

			@ModelAttribute("board_no") String fnqNum, 
			@ModelAttribute("notice_no") String noticeNum,
			@ModelAttribute("qna_no") String qnaNum,

			FnqPageInfo fnqInfoVo, 
			NoticePageInfo infonoticeVo, 
			QnaPageInfo infoqnaVo, 
			NoticeVO nvo, 
			FnqboardVO ovo,
			QnaVO qvo,
			UserMemberVO mvo,//폼에서 준 정보 , 멤버변수명이랑 자료형이 안맞으면 에러 
			GoodsVO goodsVO,
			HttpServletRequest req, Model mm, 
			@PathVariable("cate") String cate,
			@PathVariable("service") String service) {
		
		mm.addAttribute("reviewVO");
		 List<LocationVO> locaList = locaMapper.list();
		Action action = provider.getContext().getBean(cate + service, Action.class);
		HashMap<String, Object> map = new HashMap<>();

		map.put("rrvo", rrvo);
		map.put("infoVo", infoVo);
		map.put("locaList",locaList);
		map.put("goodsVO", goodsVO);

		map.put("fnqInfoVo", fnqInfoVo);
		map.put("infonoticeVo", infonoticeVo);
		map.put("rvo", rvo);
		map.put("lovo", lovo);
		map.put("tvo", tvo);
		map.put("timevo", timevo);
		map.put("resInfoVO", resInfoVO);
		map.put("infoqnaVo", infoqnaVo);
		map.put("service", service);
		map.put("board_no", fnqNum);
		map.put("notice_no", noticeNum);
		map.put("qna_no", qnaNum);
		map.put("nvo", nvo);
		map.put("ovo", ovo);
		map.put("qvo", qvo);
	      map.put("mvo",mvo);
	      

		System.out.println("현재 JSP 페이지 : " + cate + "/" + service);

		Object res = action.execute(map, req);
		return res;
	}

	@RequestMapping
	String view() {
		return "template";
	}

}
