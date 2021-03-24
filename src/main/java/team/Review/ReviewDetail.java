package team.Review;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import team.Action;

@Service("reviewdetail")
public class ReviewDetail implements Action{

	@Resource
	ReviewMapper mapper;
	
	@Override
	public Object execute(HashMap<String,Object> map, HttpServletRequest req) {

		System.out.println("review/detail execute()실행");
		
		ReviewVO vo =(ReviewVO)map.get("rvo");
		
		mapper.cnt(vo.r_code);//조회수 올리는코드
		
	    HttpSession session = req.getSession();
	    String pid = (String) session.getAttribute("id");
	    System.out.println(vo.id);
	    int chk = 0;
	    if(vo.id.equals(pid))
	    	chk = 1;
	    req.setAttribute("chk", chk); //세션아이디하고 게시판vo.id 에잇는아이디비교
	    
	    System.out.println(chk);
	    return mapper.detail(vo.r_code);
	}

}
