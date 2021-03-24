package team.Product;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;

@Service("productlistSch")
public class ProductListSch implements Action{

	@Resource
	ProductMapper mapper;
	
	@Override
	public Object execute(HashMap<String,Object> map, HttpServletRequest req) {
		ProductVO vo = (ProductVO)map.get("pvo");
		
		System.out.println(vo.p_name);
		
		int nowPage = 1;
		int pageLimit = 15;
		int pageNumLimit = 4;
		System.out.println((int)Math.ceil((double)mapper.totalCntSch(vo)/pageLimit));

		if(req.getParameter("nowPage")!=null)
			nowPage = Integer.parseInt(req.getParameter("nowPage"));
		
		
		int lastPage = (int)Math.ceil((double)mapper.totalCntSch(vo)/pageLimit);

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
		req.setAttribute("p_name", vo.p_name);
			
		return mapper.listSch(vo,start,end);

	}

}
