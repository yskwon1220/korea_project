package com.korea.health.user.model.review;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.korea.health.provider.Action;

@Service("reviewreviewmodifyreg")
public class Reviewmodifyreg implements Action {

	@Resource
	ReviewMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		//PRO : Forward안됌. RVO값을 못받음
		
		System.out.println("reviewmodify");
		
		ReviewVO vo = (ReviewVO)map.get("rrvo");
		
		if(vo.getReview_file()!=null)  //올린 파일이 존재할 경우 파일을 저장 하고 파일 이름을 다시 저장한다.
			vo.setReview_file_name(fileUpload(vo.getReview_file(),req));
		
		
		System.out.println("====================");
		System.out.println("### @Reviewmodifyreg.java ###");
		System.out.println(vo);
		mapper.modify(vo);
		
	
		AlertVO res = new AlertVO();
		res.setMsg("수정되었습니다");
		res.setUrl("review_detail?review_no="+vo.review_no );
		return res;
	}

	
	
	
	String fileUpload(MultipartFile ff, HttpServletRequest request) {
		String path = request.getRealPath("/upup");
		path = "C:\\Users\\Yongseok\\Desktop\\teamProject\\workspace\\korea_project\\src\\main\\webapp\\upup";
		
		String res = fileNewName(path,ff.getOriginalFilename());
		
		try {
			FileOutputStream fos = new FileOutputStream(path+"\\"+res);
			
			fos.write(ff.getBytes());
			
			fos.close();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;	
	}
	
	String fileNewName(String path, String ff) {
		
		path+="\\";
        try {
         
            
            int pos = ff.lastIndexOf(".");
            String domain = ff.substring(0,pos);
            String ext = ff.substring(pos);
           
            
            File newFile = new File(path+ff);
            int i = 0;
            while(newFile.exists()) {
                i++;
                ff = domain+"_"+i+ext;
                newFile = new File(path+ff);
                
            }
           // System.out.println(newFile.getPath());
        
            
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return ff;
    }
		
	
}
