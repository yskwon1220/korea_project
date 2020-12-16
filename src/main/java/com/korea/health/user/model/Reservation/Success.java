package com.korea.health.user.model.Reservation;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("reservationsuccess")
public class Success implements Action {

	@Resource
	ResMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		ReservationVO rvo = (ReservationVO) map.get("rvo");
		ResTimeVO timevo = (ResTimeVO) map.get("timevo");

		mapper.insert(rvo);

		if (mapper.selectCount() != 0) {
			mapper.addCount(timevo);
		} else {
			mapper.noCount(timevo);
		}
		return null;
	}

}
