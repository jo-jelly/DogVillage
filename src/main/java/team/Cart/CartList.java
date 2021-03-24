package team.Cart;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import team.Action;
import team.Product.ProductVO;
import team.Review.ReviewVO;

@Service("cartlist")
public class CartList implements Action{

	@Resource
	CartMapper mapper;
	
	@Override
	public Object execute(HashMap<String,Object> map, HttpServletRequest req) {

		System.out.println("cart/list execute()실행");
		CartVO vo =(CartVO)map.get("ctvo");
	      HttpSession session = req.getSession();
	      String pid = (String) session.getAttribute("id");

	      System.out.println("pid확인"+pid);
	      vo.setId(pid);		 
	      vo.getId();
	      
	      int cnt=1;
	      if(mapper.mytotalCnt(pid) == 0) {
	    	  cnt=0;  
	      }
	      req.setAttribute("cnt", cnt);
	      
		return mapper.list(pid); //vo.id
	}

}

