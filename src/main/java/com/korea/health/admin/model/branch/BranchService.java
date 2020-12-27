package com.korea.health.admin.model.branch;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.korea.health.admin.model.trainer.TrainerVO;
import com.korea.health.provider.Action;
import com.korea.health.service.Pagenation;

@Service("admin_page_branch")	// providerController에서 bean 만들어줄때 이름
public class BranchService implements Action {

	@Resource
	BranchMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest request) {
		
		Pagenation pageCtl = (Pagenation)map.get("pageCtl");
		BranchVO vo = (BranchVO)map.get("brVO");
	
		switch ((String)map.get("service")) {
		case "info":
			System.out.println("switch case : info에 들어왔다.");
			return mapper.branchList();

		case "detail":
			System.out.println("switch case : detail에 들어왔다.");
			return mapper.branchDetail(Integer.parseInt(request.getParameter("lo_cnt")));
		
		case "insertForm":
			System.out.println("switch case : insertForm에 들어왔다.");
			return mapper.branchCnt();
			
		case "insert":
			System.out.println("switch case : insert에 들어왔다.");
			System.out.println(vo);
			
			vo.setLo_pic(fileUpload(vo.getPic(), request));
			
			mapper.branchInsert(vo);
			return mapper.branchDetail(vo.getLo_cnt());
			
		case "modifyForm":
			System.out.println("switch case : modifyForm에 들어왔다.");
			System.out.println(vo);
			return mapper.branchDetail(Integer.parseInt(request.getParameter("lo_cnt")));
		
		case "fileDelete":
			System.out.println("switch case : fileDelete에 들어왔다.");
			
			mapper.fileDelete(vo.getLo_cnt());
			
			return mapper.branchDetail(Integer.parseInt(request.getParameter("lo_cnt")));
			
		case "modify":
			System.out.println("switch case : modify에 들어왔다.");
			System.out.println(vo);

			if(vo.getPic() != null)
				fileUpload(vo.getPic(), request);
				
				mapper.branchModify(vo);
				return mapper.branchDetail(vo.getLo_cnt());
				
		case "delete":
			System.out.println("switch case : delete에 들어왔다.");
			
			String fileName = vo.getLo_pic();
			String path = "C:\\Users\\Yongseok\\Desktop\\teamProject\\workspace\\korea_project\\src\\main\\webapp\\resource\\images";
			
			int cnt = mapper.branchDelete(vo);
			mapper.branchTrainerDelete("100" + (request.getParameter("lo_cnt")));
			mapper.newNum(vo);
			if(cnt == 0) {
				return mapper.branchDetail(Integer.parseInt(request.getParameter("lo_cnt")));
			}else {
				new File(path + "\\" + fileName).delete();
			}
			return null;
			
		case "list":
			System.out.println("switch case : list에 들어왔다.");
			System.out.println(vo);
			
			String lo_no = request.getParameter("lo_no");

			int listCnt = (int)mapper.totalCnt(lo_no);
			int page = (int)map.get("page");
			int range = (int)map.get("range");
			
			System.out.println("총 갯수 : "+ listCnt);
			
			pageCtl.pageInfo(page, range, listCnt);
			pageCtl.setLocationNo(lo_no);
			
			pageCtl.setPageSet(mapper.branchTrainerList(pageCtl));
			
			System.out.println(pageCtl.getPageSet());
			
			return pageCtl;
				
		default:
			break;
		}
		return null;
	}
	
	String fileUpload(MultipartFile mf, HttpServletRequest req) {
	      String path = req.getRealPath("/images");
	      path = "C:\\Users\\Yongseok\\Desktop\\teamProject\\workspace\\korea_project\\src\\main\\webapp\\resource\\images";
	      
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
