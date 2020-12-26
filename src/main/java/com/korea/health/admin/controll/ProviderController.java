package com.korea.health.admin.controll;

import java.util.Date;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.korea.health.admin.model.branch.BranchVO;
import com.korea.health.admin.model.event.EventAdminVO;
import com.korea.health.admin.model.goods.GoodsVO;
import com.korea.health.admin.model.mainSetting.UploadMainImgVO;
import com.korea.health.admin.model.mainSetting.UrMainVO;
import com.korea.health.admin.model.reservation.ResTimeVO;
import com.korea.health.admin.model.reservation.ReservationTimeVO;
import com.korea.health.admin.model.reservation.ReservationVO;
import com.korea.health.admin.model.result.ResultVO;
import com.korea.health.admin.model.trainer.TrainerVO;
import com.korea.health.provider.Action;
import com.korea.health.provider.Kind;
import com.korea.health.provider.Myprovider;
import com.korea.health.service.Pagenation;
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
@RequestMapping("/admin_page_/{cate}/{service}")
public class ProviderController {
	
	@Resource
	Myprovider provider;
	
	@ModelAttribute
	Kind kind(@PathVariable("cate") String cate, @PathVariable("service") String service) {

		Kind kind = new Kind();
		kind.setCate(cate);
		kind.setService(service);
		kind.setMainUrl(cate + "/" + service + ".jsp");
		System.out.println(kind.getMainUrl());
		return kind;
		
	}
	
	@ModelAttribute("data")
	Object mainData(@PathVariable("cate") String cate, @PathVariable("service") String service,
			@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range,
			@RequestParam(required = false, defaultValue = "2020") int year,
			@RequestParam(required = false, defaultValue = "1") int month,
			@ModelAttribute("board_no")String fnqNum ,
		    @ModelAttribute("notice_no")String noticeNum ,
		    @ModelAttribute("qna_no")String qnaNum ,
			ReviewVO rrVo,
			ReviewPagingInfo infoVo,
			TrainerVO trVO,	// 트레이너
			BranchVO brVO,	// 지점
			GoodsVO goodsVO,	// 상품
			UserMemberVO mvo,
			ResultVO resultVO,	// 정산
			EventAdminVO eventvo, //이벤트
			FnqPageInfo fnqInfoVo,
			NoticePageInfo infonoticeVo,
			QnaPageInfo infoqnaVo, 
			NoticeVO nvo,
			FnqboardVO ovo,
			QnaVO qvo,
			ReservationVO rvo, 
			ResTimeVO timevo, 
			Pagenation pageCtl, 
			ReservationTimeVO timevo2,
			UploadMainImgVO imVO,
			UrMainVO urVO,
			HttpServletRequest request) {

		System.out.println("메인데이터에서는? : " + cate);

		Action action = provider.getContext().getBean("admin_page_" + cate, Action.class);
		// admin_page_ + trainer 로 된 TrainerService을 빈으로 만듦

		HashMap<String, Object> map = new HashMap<String, Object>();

		 map.put("timevo2", timevo2);
	    map.put("trVO", trVO);
		map.put("brVO", brVO);
		map.put("goodsVO", goodsVO);
	    map.put("rvo", rvo);
	    map.put("timevo", timevo);
	    map.put("fnqInfoVo", fnqInfoVo);
		map.put("infonoticeVo", infonoticeVo);
		map.put("infoqnaVo", infoqnaVo);
		map.put("board_no", fnqNum);
		map.put("notice_no", noticeNum);
		map.put("qna_no", qnaNum);
		map.put("nvo", nvo);
		map.put("ovo", ovo);
		map.put("qvo", qvo);
		map.put("month", month);
		map.put("year", year);
		map.put("resultVO", resultVO);
	    map.put("rrVo", rrVo);
		map.put("infoVo",infoVo);
		map.put("mvo",mvo);
		map.put("eventVO", eventvo);
		map.put("service", service); 
		map.put("pageCtl", pageCtl);
		map.put("page", page);
		map.put("range", range);
		map.put("imVO", imVO);
		map.put("urVO", urVO);

		Object res = action.execute(map, request); 

		return res; 

	}

	@RequestMapping
	String view() {
		System.out.println("view에 접근하였습니다.");
		return "admin_page_/template";
	}
}
