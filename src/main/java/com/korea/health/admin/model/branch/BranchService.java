package com.korea.health.admin.model.branch;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("admin_page_branch")	// providerController에서 bean 만들어줄때 이름
public class BranchService implements Action {

	@Resource
	BranchMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
	
		switch ((String)map.get("service")) {
		case "info":
			System.out.println("switch case : info에 들어왔다.");
			return mapper.branchList();
		default:
			break;
		}
		return null;
	}

}
