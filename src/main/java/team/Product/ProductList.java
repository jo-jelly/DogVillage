package team.Product;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import team.Action;
import team.Cart.CartVO;
import team.customer.CustomerVO;

@Service("productlist")
public class ProductList implements Action{

	@Resource
	ProductMapper mapper;
	
	@Override
	public Object execute(HashMap<String,Object> map, HttpServletRequest req) {
		ProductVO vo = (ProductVO)map.get("pvo");
		System.out.println(vo.p_cate_d);
		System.out.println(mapper.totalCntCate_d(vo));
		int nowPage = 1;
		int pageLimit = 15;
		int pageNumLimit = 4;
		System.out.println((int)Math.ceil((double)mapper.totalCntCate_d(vo)/pageLimit));

		if(req.getParameter("nowPage")!=null)
			nowPage = Integer.parseInt(req.getParameter("nowPage"));
		
		
		int lastPage = (int)Math.ceil((double)mapper.totalCntCate_d(vo)/pageLimit);

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
		req.setAttribute("p_cate_d", vo.p_cate_d);

		
		return mapper.cateDList(vo,start,end);

	}

}
