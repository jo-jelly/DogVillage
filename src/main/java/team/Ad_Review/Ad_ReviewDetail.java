package team.Ad_Review;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;

@Service("ad_reviewdetail")
public class Ad_ReviewDetail implements Action{

	@Resource
	Ad_ReviewMapper mapper;
	
	@Override
	public Object execute(HashMap<String,Object> map, HttpServletRequest req) {

		System.out.println("ad_review/detail execute()실행");
		
		Ad_ReviewVO vo =(Ad_ReviewVO)map.get("rvo");
		
		return mapper.detail(vo.r_code);
	}

}
