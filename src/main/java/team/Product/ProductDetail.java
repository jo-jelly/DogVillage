package team.Product;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import team.Action;
import team.Cart.CartVO;
import team.customer.CustomerVO;

@Service("productdetail")
public class ProductDetail implements Action {

	@Resource
	ProductMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		System.out.println("product/detail execute()실행");

		ProductVO vo = (ProductVO) map.get("pvo");
		

		  HttpSession session = req.getSession();
		 
		  String pid = (String) session.getAttribute("id");
		  
		  
//		  int chk=0; 
//		  
//		  if(pid!=null) {
//			  if(mapper.overlap(pid,vo)>2) { 
//				  chk=1;
//			  }
//			  System.out.println("매퍼"+mapper.overlap(pid,vo));
//			  System.out.println("chk : "+chk);
//		  }

		return mapper.detail(vo.p_code);
	}

}
