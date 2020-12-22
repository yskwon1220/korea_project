package com.korea.health.admin.model.event;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.korea.health.admin.model.branch.BranchVO;
import com.korea.health.provider.Action;
@Service("admin_page_event")
public class EventAdminService implements Action{
	
	@Resource
	EventAdminMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest request) {
		
		EventAdminVO vo = (EventAdminVO)map.get("eventVO");
		HashMap<String, Object> temp = new HashMap<String, Object>();
		
		switch ((String)map.get("service")) {
		case "info":
			return mapper.eventList();
		
		case "detail":
			System.out.println("switch case : detail에 들어왔다.");
			return mapper.eventDetail(request.getParameter("event_no"));
			
		case "insertForm":
			System.out.println("switch case : insertForm에 들어왔다.");
			
			temp.put("goods", mapper.goodsList());
			temp.put("no", mapper.eventCnt());
			
			return temp;
			
		case "insert":
			System.out.println("switch case : insert에 들어왔다.");
			System.out.println(vo);
			
			vo.setMain_img(fileUpload(vo.getMainMF_img(), request));
			vo.setDetail_img1(fileUpload(vo.getDetailMF_img1(), request));
			vo.setDetail_img2(fileUpload(vo.getDetailMF_img2(), request));
			vo.setDetail_img3(fileUpload(vo.getDetailMF_img3(), request));
			
			mapper.eventInsert(vo);
			return mapper.eventDetail(vo.getEvent_no());
			
		case "modifyForm":
			System.out.println("switch case : modifyForm에 들어왔다.");
			System.out.println(vo);
			
			temp.put("goods", mapper.goodsList());
			temp.put("res", mapper.eventDetail(request.getParameter("event_no")));
			
			return temp;
			
		case "fileDelete":
			System.out.println("switch case : fileDelete에 들어왔다.");
			
			String column = request.getParameter("column");
			
			switch (column) {
			case "main_img":
				mapper.mainFileDelete(vo);
				break;
			case "detail_img1":
				mapper.detailFile1Delete(vo);
				break;
			case "detail_img2":
				mapper.detailFile2Delete(vo);
				break;
			case "detail_img3":
				mapper.detailFile3Delete(vo);
				break;
			default:
				break;
			}
			return mapper.eventDetail(vo.getEvent_no());
			
		case "modify":
			System.out.println("switch case : modify에 들어왔다.");
			System.out.println(vo);
				
			if(vo.getMainMF_img() != null)
				fileUpload(vo.getMainMF_img(), request);
				
			if(vo.getDetailMF_img1() != null)
				fileUpload(vo.getDetailMF_img1(), request);
			
			if(vo.getDetailMF_img2() != null)
				fileUpload(vo.getDetailMF_img2(), request);
			
			if(vo.getDetailMF_img3() != null)
				fileUpload(vo.getDetailMF_img3(), request);
			
				mapper.eventModify(vo);
				return mapper.eventDetail(vo.getEvent_no());
				
		case "delete":
			String path = "C:\\Users\\Yongseok\\Desktop\\teamProject\\workspace\\korea_project\\src\\main\\webapp\\resource\\images\\";
			String fileName1 = vo.getMain_img();
			String fileName2 = vo.getDetail_img1();
			String fileName3 = vo.getDetail_img2();
			String fileName4 = vo.getDetail_img3();
			
			int cnt = mapper.eventDelete(vo);
			if (cnt == 0) {
				return mapper.eventDetail(request.getParameter("event_no"));
			}else {
				mapper.newNum(vo);
				if(fileName1 != "") 
					new File(path + "\\" + fileName1).delete();
				if(fileName2 != "") 
					new File(path + "\\" + fileName2).delete();
				if(fileName3 != "") 
					new File(path + "\\" + fileName3).delete();
				if(fileName4 != "") 
					new File(path + "\\" + fileName4).delete();
				return null;
			}
			
		default:
			break;
		}
		return null;
	}
	
	   String fileUpload(MultipartFile mf, HttpServletRequest req) {
		      String path = req.getRealPath("/images");
		      path = "C:\\Users\\Yongseok\\Desktop\\teamProject\\workspace\\korea_project\\src\\main\\webapp\\resource\\images";
		      
		      if(mf != null) {
		      String res = fileNewName(path,mf.getOriginalFilename());
		      
		      try {
		         FileOutputStream fos = new FileOutputStream(path+"\\"+res);
		         
		         fos.write(mf.getBytes());
		         
		         fos.close();
		         
		      } catch (Exception e) {
		         e.printStackTrace();
		      }
		      return res;
		      
		   }else {
			   return "";
		   }
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
