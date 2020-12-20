/*
 * package com.korea.health.user.model.review;
 * 
 * import java.io.File; import java.io.FileOutputStream; import
 * java.util.HashMap; import java.util.List;
 * 
 * import javax.annotation.Resource; import
 * javax.servlet.http.HttpServletRequest;
 * 
 * import org.springframework.stereotype.Service; import
 * org.springframework.web.multipart.MultipartFile;
 * 
 * import com.korea.health.provider.Action; import
 * com.korea.health.user.model.Location.LocaMapper; import
 * com.korea.health.user.model.Location.LocationVO; import
 * com.korea.health.user.model.Trainer.TraiMapper; import
 * com.korea.health.user.model.Trainer.TrainerVO;
 * 
 * @Service("reviewreviewmodify") public class Reviewmodify2 implements Action {
 * 
 * @Resource ReviewMapper mapper;
 * 
 * @Resource LocaMapper locaMapper;
 * 
 * @Resource TraiMapper traiMapper;
 * 
 * @Override public Object execute(HashMap<String, Object> map,
 * HttpServletRequest req) { List<LocationVO> lvo = locaMapper.list();
 * List<TrainerVO> tvo = traiMapper.list();
 * 
 * System.out.println("reviewmodify");
 * 
 * ReviewVO vo = (ReviewVO)map.get("rrvo"); int review_no = vo.getReview_no();
 * 
 * int req_review_no = Integer.parseInt( req.getParameter("review_no") );
 * System.out.println("review_no : " + review_no);
 * System.out.println("req_review_no : " + req_review_no);
 * 
 * System.out.println("====================");
 * //System.out.println(vo.toString());
 * 
 * 
 * ReviewVO review = mapper.detail(review_no);
 * 
 * System.out.println(review.getTitle());
 * System.out.println(review.getContent());
 * System.out.println(review.getUser_id());
 * 
 * map.put("vo", review); map.put("locationList", lvo); map.put("trList", tvo);
 * 
 * return map;
 * 
 * }
 * 
 * }
 */
