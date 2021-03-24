package team.Review;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import team.Action;

@Service("reviewinsert")
public class ReviewInsert implements Action{

	@Resource
	ReviewMapper mapper;
	
	@Override
	public Object execute(HashMap<String,Object> map, HttpServletRequest req) {

		System.out.println("review/insert execute()실행");
		
		ReviewVO vo =(ReviewVO)map.get("rvo");
	    HttpSession session = req.getSession();
	    String pid = (String) session.getAttribute("id");
	   System.out.println(pid);
	    
	    vo.setId(pid);		 

	    System.out.println("pid확인"+pid);
	    vo.getId();
		System.out.println(vo.getP_code());
		System.out.println(vo.getP_code());

		return null;
	}

}
