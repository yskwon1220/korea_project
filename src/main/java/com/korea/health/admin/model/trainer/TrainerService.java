package com.korea.health.admin.model.trainer;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.korea.health.provider.Action;

// trainer 들어왔을 때 액션들 집합
@Service("admin_page_trainer")	// providerController에서 bean 만들어줄때 이름
public class TrainerService implements Action {

	@Resource
	TrainerMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest request) {
		try {
			System.out.println("execute에 들어온건? " + map.get("service"));
			switch ((String)map.get("service")) {
			case "info":
				System.out.println("switch case : info에 들어왔다.");
				return mapper.trainerList();
				
			case "detail":
				System.out.println("switch case : detail에 들어왔다.");
				System.out.println(request.getParameter("tr_no"));
				System.out.println(mapper.trainerDetail(Integer.parseInt(request.getParameter("tr_no"))));
				return mapper.trainerDetail(Integer.parseInt(request.getParameter("tr_no")));
				
			case "insertForm":
				System.out.println("switch case : insertForm에 들어왔다.");
				return null;
				
			case "insert":
				System.out.println("switch case : insert에 들어왔다.");
				System.out.println((TrainerVO)map.get("trVO"));
				TrainerVO vo = (TrainerVO)map.get("trVO");
				
				MultipartFile upload = vo.getPic();
				File file = new File("C:\\Users\\Yongseok\\Desktop\\teamProject\\workspace\\korea_project\\src\\main\\webapp\\resource\\images\\" + vo.getTr_pic());
				
				if(file.exists())	{
					mapper.trainerInsert(vo);
					return mapper.trainerDetail(vo.getTr_no());
				}

				fileUpload(upload, request);

				mapper.trainerInsert(vo);
				
				return mapper.trainerDetail(vo.getTr_no());
				
			default:
				break;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return null;
	}
	
	public void fileUpload(MultipartFile mf, HttpServletRequest req) {
		String path = "C:\\Users\\Yongseok\\Desktop\\teamProject\\workspace\\korea_project\\src\\main\\webapp\\resource\\images";
		
		try {
			FileOutputStream fos = new FileOutputStream(path + "/" + mf.getOriginalFilename());
			
			fos.write(mf.getBytes());
			fos.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
}
