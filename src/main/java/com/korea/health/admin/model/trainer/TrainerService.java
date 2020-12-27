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
import com.korea.health.service.Pagenation;

// trainer 들어왔을 때 액션들 집합
@Service("admin_page_trainer")	// providerController에서 bean 만들어줄때 이름
public class TrainerService implements Action {

	@Resource
	TrainerMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest request) {
			System.out.println("execute에 들어온건? " + map.get("service"));
			
			Pagenation pageCtl = (Pagenation)map.get("pageCtl");
			TrainerVO vo = (TrainerVO)map.get("trVO");
			
			switch ((String)map.get("service")) {
			case "info":
				System.out.println("switch case : info에 들어왔다.");
				
				int listCnt = (int)mapper.totalCnt();
				int page = (int)map.get("page");
				int range = (int)map.get("range");
				System.out.println("전체 페이지 수 : " + listCnt);

				pageCtl.pageInfo(page, range, listCnt);

				System.out.println("출력 페이지 시작 : " + pageCtl.getStartList());
				System.out.println("출력 페이지 끝 : " + pageCtl.getEndList());
				System.out.println("Prev 버튼 작동 : " + pageCtl.isPrev());
				System.out.println("Next 버튼 작동 : " + pageCtl.isNext());
				
				System.out.println(mapper.trainerList(pageCtl));
				
				pageCtl.setPageSet(mapper.trainerList(pageCtl));
				
				return pageCtl;	// data에는 pagenation이 담기게 된다. 거기 안에 pageSet에 trainerVO가 담김
				
			case "detail":
				System.out.println("switch case : detail에 들어왔다.");
				System.out.println(mapper.trainerDetail(Integer.parseInt(request.getParameter("tr_no"))));
				return mapper.trainerDetail(Integer.parseInt(request.getParameter("tr_no")));
				
			case "insertForm":
				System.out.println("switch case : insertForm에 들어왔다.");
				
				return mapper.branchList();
				
			case "insert":
				System.out.println("switch case : insert에 들어왔다.");
				System.out.println(vo);
				
				vo.setTr_pic(fileUpload(vo.getPic(), request));
				
				mapper.trainerInsert(vo);
				return mapper.trainerDetail(vo.getTr_no());

			case "modifyForm":
				System.out.println("switch case : modifyForm에 들어왔다.");
				System.out.println(vo);
				return mapper.trainerDetail(Integer.parseInt(request.getParameter("tr_no")));
				
			case "fileDelete":
				System.out.println("switch case : fileDelete에 들어왔다.");
				
				mapper.fileDelete(vo.getTr_no());
				
				return mapper.trainerDetail(Integer.parseInt(request.getParameter("tr_no")));
				
			case "modify":
				System.out.println("switch case : modify에 들어왔다.");
				System.out.println(vo);
					
				if(vo.getPic() != null)
					fileUpload(vo.getPic(), request);
					
					mapper.trainerModify(vo);
					return mapper.trainerDetail(vo.getTr_no());
					
			case "delete":
				System.out.println("switch case : delete에 들어왔다.");
				
				String fileName = vo.getTr_pic();
				String path = "C:\\Users\\Yongseok\\Desktop\\teamProject\\workspace\\korea_project\\src\\main\\webapp\\resource\\images\\gangsa";
				
				int cnt = mapper.trainerDelete(vo);
				if(cnt == 0) {
					return mapper.trainerDetail(Integer.parseInt(request.getParameter("tr_no")));
				}else {
					mapper.newNum(vo);
					new File(path + "\\" + fileName).delete();
				}
				
				return null;
				
			default:
				break;
			}
		
		return null;
	}
	
	   String fileUpload(MultipartFile mf, HttpServletRequest req) {
		      String path = req.getRealPath("/images");
		      path = "C:\\Users\\Yongseok\\Desktop\\teamProject\\workspace\\korea_project\\src\\main\\webapp\\resource\\images\\gangsa";
		      
		      String res = fileNewName(path,mf.getOriginalFilename());
		      
		      try {
		         FileOutputStream fos = new FileOutputStream(path+"\\"+res);
		         
		         fos.write(mf.getBytes());
		         
		         fos.close();
		         
		      } catch (Exception e) {
		         e.printStackTrace();
		      }
		      return res;   
		   }
	  
	   String fileNewName(String path, String temp) {
		      path+="\\";
		        try {
		            int pos = temp.lastIndexOf(".");
		            String domain = temp.substring(0,pos);
		            String ext = temp.substring(pos);
		           
		            
		            File newFile = new File(path+temp);
		            
		            int i = 0;
		            
		            while(newFile.exists()) {
		                i++;
		                temp = domain + "_" + i + ext;
		            
		                newFile = new File(path+temp);
		                
		            }
		            
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
		        return temp;
		    }
}
