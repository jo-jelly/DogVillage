package team.Ad_Review;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;
import team.Cart.CartVO;

@Service("ad_reviewlist")
public class Ad_ReviewList implements Action{

	@Resource
	Ad_ReviewMapper mapper;
	
	@Override
	public Object execute(HashMap<String,Object> map, HttpServletRequest req) {

		System.out.println("ad_review/review execute()실행");
		

		int nowPage = 1;
		int pageLimit = 10;
		int pageNumLimit = 4;

		if(req.getParameter("nowPage")!=null)
			nowPage = Integer.parseInt(req.getParameter("nowPage"));
		
		

		int lastPage = (int)Math.ceil((double)mapper.totalCnt()/pageLimit);
		int start = (nowPage-1)*pageLimit+1;
		int end = nowPage*pageLimit;
		
		int startPage = (nowPage-1)/pageNumLimit*pageNumLimit+1;
		int endPage = startPage+pageNumLimit-1;
		
		if(endPage>lastPage)
			endPage = lastPage;
		
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("start", start);
		req.setAttribute("nowPage", nowPage);
		req.setAttribute("lastPage", lastPage);
		
		Ad_ReviewVO vo =(Ad_ReviewVO)map.get("rvo");

		return mapper.list(vo,start,end);
	}

}
