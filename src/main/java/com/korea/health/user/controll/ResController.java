package com.korea.health.user.controll;

import java.util.HashMap;
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

import com.korea.health.provider.Action;
import com.korea.health.provider.Kind;
import com.korea.health.provider.Myprovider;
import com.korea.health.user.model.Location.LocationVO;
import com.korea.health.user.model.Reservation.ResTimeVO;
import com.korea.health.user.model.Reservation.ReservationVO;
import com.korea.health.user.model.Trainer.TrainerVO;
import com.korea.health.user.model.fnq.FnqPageInfo;
import com.korea.health.user.model.fnq.FnqboardVO;
import com.korea.health.user.model.notice.NoticePageInfo;
import com.korea.health.user.model.notice.NoticeVO;
import com.korea.health.user.model.payment.Payment_Result;
import com.korea.health.user.model.payment.cardVO;
import com.korea.health.user.model.payment.cardVO2;
import com.korea.health.user.model.payment.payMember;
import com.korea.health.user.model.qna.QnaPageInfo;
import com.korea.health.user.model.qna.QnaVO;
import com.korea.health.user.model.review.ReviewPagingInfo;
import com.korea.health.user.model.review.ReviewVO;

@Controller
@RequestMapping("/user_page_/{cate}/{service}")
public class ResController {
	@Resource
	Myprovider provider;

	@ModelAttribute
	Kind kind(@PathVariable("cate") String cate, @PathVariable("service") String service) {
		Kind kind = new Kind();
		kind.setCate(cate);
		kind.setService(service);
		kind.setMainUrl(cate + "/" + service + ".jsp");
		return kind;
	}

	@ModelAttribute("data")
	@ResponseBody
	Object mainData(ReservationVO rvo, LocationVO lovo, TrainerVO tvo, ResTimeVO timevo, ReviewVO rrvo,
			ReviewPagingInfo infoVo, FnqPageInfo fnqInfoVo, NoticePageInfo infonoticeVo, QnaPageInfo infoqnaVo,
			NoticeVO nvo, FnqboardVO ovo, QnaVO qvo, Payment_Result pr, HttpSession session, cardVO vo, cardVO2 vo2,
			@PathVariable("cate") String cate, @PathVariable("service") String service,
			@ModelAttribute("board_no") String fnqNum, @ModelAttribute("notice_no") String noticeNum,
			@ModelAttribute("qna_no") String qnaNum, @ModelAttribute("event_no") String en,
			@ModelAttribute("price") String e_pr, @ModelAttribute("discount") String dico, HttpServletRequest req,
			Model mm) {

		mm.addAttribute("reviewVO");
		session.setAttribute("user", new payMember("a1", "이주호"));
		mm.addAttribute("pr", pr);
		mm.addAttribute("vo", vo);
		mm.addAttribute("vo2", vo2);
		mm.addAttribute("price", e_pr);
		mm.addAttribute("discount", dico);

		Action action = provider.getContext().getBean(cate + service, Action.class);
		HashMap<String, Object> map = new HashMap<>();

		payMember u_ss = (payMember) session.getAttribute("user");

		map.put("user_ss", u_ss.getId());
		map.put("service", service);
		map.put("event_no", en);
		map.put("vo", vo);
		map.put("vo2", vo2);
		map.put("rvo", rvo);
		map.put("rrvo", rrvo);
		map.put("lovo", lovo);
		map.put("tvo", tvo);
		map.put("infoVo", infoVo);
		map.put("timevo", timevo);
		map.put("fnqInfoVo", fnqInfoVo);
		map.put("infonoticeVo", infonoticeVo);
		map.put("infoqnaVo", infoqnaVo);
		map.put("service", cate + service);
		map.put("board_no", fnqNum);
		map.put("notice_no", noticeNum);
		map.put("qna_no", qnaNum);
		map.put("nvo", nvo);
		map.put("ovo", ovo);
		map.put("qvo", qvo);

		System.out.println("현재 JSP 페이지 : " + cate + "/" + service);

		Object res = action.execute(map, req);
		System.out.println(res);
		return res;
	}

	@RequestMapping
	String view(@PathVariable("cate") String cate) {
		return cate + "/template";
	}

}
