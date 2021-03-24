package team.Review;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import team.Action;

@Service("reviewdelete")
public class ReviewDelete implements Action{

	@Resource
	ReviewMapper mapper;
	
	@Override
	public Object execute(HashMap<String,Object> map, HttpServletRequest req) {

		System.out.println("ad_review/delete execute()실행");
		
		ReviewVO vo =(ReviewVO)map.get("rvo");
	    HttpSession session = req.getSession();
	    String pid = (String) session.getAttribute("id");
	    vo.setId(pid);	
		
	    
	    
	    
	    
	    
	    
	    
		return 	mapper.delete(vo);

	}

}
