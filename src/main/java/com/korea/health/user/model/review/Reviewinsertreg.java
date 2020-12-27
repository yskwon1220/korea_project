package com.korea.health.user.model.review;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.parsing.GenericTokenParser;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.korea.health.provider.Action;

@Service("reviewreviewinsertreg")
public class Reviewinsertreg implements Action {

	@Resource
	ReviewMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		ReviewVO vo = (ReviewVO)map.get("rrvo");
		


			vo.setReview_file_name(fileUpload(vo.getReview_file(),req));
		
		mapper.trainerStar(vo);
		mapper.insert(vo);
		return null;

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
//			e.printStackTrace();
			return null;
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
//            e.printStackTrace();
        	return null;
        }
        
        return ff;
    }
	
	

	

}
