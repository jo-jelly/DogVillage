package team.Ad_Review;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;

@Service("ad_reviewdeleteChk")
public class Ad_ReviewDeleteChk implements Action{


	@Resource
	Ad_ReviewMapper mapper;
	
	@Override
	public Object execute(HashMap<String,Object> map, HttpServletRequest req) {

		System.out.println("ad_review/deleteReg execute()실행");
		
		
		Ad_ReviewVO vo =(Ad_ReviewVO)map.get("rvo");
		
		return 	null;

	}

}
