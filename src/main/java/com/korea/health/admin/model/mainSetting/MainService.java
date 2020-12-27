package com.korea.health.admin.model.mainSetting;

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
@Service("admin_page_mainSetting") // providerController에서 bean 만들어줄때 이름
public class MainService implements Action {

	@Resource
	UploadImgMapper mapper;
	@Resource
	UsrMainMapper umapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest request) {
		System.out.println("execute에 들어온건? " + map.get("service"));
		UploadMainImgVO vo = (UploadMainImgVO) map.get("imVO");
		UrMainVO urvo = (UrMainVO) map.get("urVO");

		switch ((String) map.get("service")) {
		case "info":
			System.out.println("switch case : info에 들어왔다.");
			return mapper.list();
		case "urInfo":
			System.out.println("switch case : info에 들어왔다.");
			return umapper.urList();
		case "detail":
			System.out.println("switch case : detail에 들어왔다.");
			return mapper.detail(vo.imgNo);
		case "fileDelete":
			System.out.println("switch case : fileDelete에 들어왔다.");
			mapper.fileDelete(vo.getImgNo());
			return mapper.detail(vo.imgNo);
		case "insert":
			return null;
		case "insertReg":
			System.out.println(vo);
			vo.setImage(fileUpload(vo.getImgUpload(), request));
			mapper.insert(vo);
			return "detail?imgNo=" + vo.getImgNo();
		case "modify":
			return mapper.detail(vo.imgNo);
		case "modifyReg":
			mapper.detail(vo.imgNo);
			System.out.println("잘 되고있는거 맞지!?" + mapper.detail(vo.imgNo));
			mapper.modify(vo);
			return "detail?imgNo=" + vo.getImgNo();
		case "delete":
			System.out.println(mapper.delete(vo.getImgNo()));
			String fileName = vo.getImage();
			String path = "C:\\Users\\Yongseok\\Desktop\\teamProject\\workspace\\korea_project\\src\\main\\webapp\\resource\\images	";
			new File(path + "\\" + fileName).delete();
			mapper.delete(vo.getImgNo());
			return "info";
		case "urList":
			System.out.println("switch case : info에 들어왔다.");
			return umapper.urList();
		case "urInsert":
			return null;
		case "urInsertReg":
			System.out.println(urvo);
			umapper.urInsert(urvo);
			return "urInfo";
		case "urModify":
			return umapper.urDetail(urvo.mainNo);
		case "urModifyReg":
			umapper.urDetail(urvo.mainNo);
			System.out.println("잘 되고있는거 맞지!?" + umapper.urDetail(urvo.mainNo));
			umapper.urModify(urvo);
			return "urInfo";
		case "urDelete":
			 umapper.urDelete(urvo.getMainNo());
			return "urInfo";
		}
		return null;

	}

	String fileUpload(MultipartFile mf, HttpServletRequest req) {
		String path = req.getRealPath("/images");
		path = "C:\\Users\\Yongseok\\Desktop\\teamProject\\workspace\\korea_project\\src\\main\\webapp\\resource\\images";

		String res = fileNewName(path, mf.getOriginalFilename());

		try {
			FileOutputStream fos = new FileOutputStream(path + "\\" + res);

			fos.write(mf.getBytes());

			fos.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	String fileNewName(String path, String temp) {
		path += "\\";
		try {
			int pos = temp.lastIndexOf(".");
			String domain = temp.substring(0, pos);
			String ext = temp.substring(pos);
			File newFile = new File(path + temp);

			int i = 0;

			while (newFile.exists()) {
				i++;
				temp = domain + "_" + i + ext;

				newFile = new File(path + temp);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return temp;
	}
}