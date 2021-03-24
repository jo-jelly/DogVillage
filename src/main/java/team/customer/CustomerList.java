package team.customer;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;

@Service("customer_managercustomerList")
public class CustomerList implements Action{

	@Resource
	CustomerMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		System.out.println("customer/list execute() 실행");
		System.out.println(mapper.totalCnt());
		int nowPage = 1;
		int pageLimit = 15;
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
		
		
		
		
		
		
		return mapper.list(start, end);
	}

}
