package team.Ad_Review;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;

@Service("ad_reviewdelete")
public class Ad_ReviewDelete implements Action{

	@Resource
	Ad_ReviewMapper mapper;
	
	@Override
	public Object execute(HashMap<String,Object> map, HttpServletRequest req) {

		System.out.println("ad_review/delete execute()실행");
		
		Ad_ReviewVO vo =(Ad_ReviewVO)map.get("rvo");

		
		return 	mapper.delete(vo);

	}

}
