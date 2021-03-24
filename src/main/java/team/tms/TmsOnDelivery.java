package team.tms;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("tmsonDelivery")
public class TmsOnDelivery implements Action{
	
	@Resource
	TmsMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		
		System.out.println("tms/OnDelivery execute() 실행");
	
		return mapper.deliList();
	}

}
