package team.Cart;

import java.lang.ProcessBuilder.Redirect;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import team.Action;
import team.Product.Alert1VO;
import team.Product.ProductVO;
import team.customer.CustomerVO;


@Service("cartinsert")
public class CartInsert implements Action{

	@Resource
	CartMapper mapper;
	
	@Override
	public Object execute(HashMap<String,Object> map, HttpServletRequest req) {
		
		System.out.println("cart/insert execute()실행");
		
		
		CartVO vo =(CartVO)map.get("ctvo"); 
		ProductVO pvo=(ProductVO)map.get("pvo");
	    HttpSession session = req.getSession();
	    String pid = (String) session.getAttribute("id");
	    System.out.println("재고량,최대량"+pvo.getMax()); //재고량,최대량
	    System.out.println("디테일에서 장바구니로가는거"+vo.getP_amount());//프로더트에서 장바구니로가는 주문량
	    System.out.println("피코드"+vo.p_code);
	    vo.setId(pid);
//	    System.out.println("그 회원 그 상품 장바구니에 들어있는양"+mapper.pa(vo.p_code,pid)); //그상품,로그인계정 장바구니에 들어있는 양
	    System.out.println("pid확인"+pid);
			      
	    Alert1VO res = new Alert1VO();

	    
	    
	      //모든 카트 길이
	      if(mapper.totalCnt()==0) {
	    	  mapper.insertfirst(vo);
	      }else {  
	    	  
	    	  
	    	  
	    	  int count = mapper.sameCart(vo.getP_code(),pid); //동일상품잇니? 잇으면 1 업승면 0
	    	  
	    	  if(count == 0 ) {
    			  res.setAlertMsg("장바구니에 새로운 상품을 담았습니다");
    			  res.setHref("list");
	    		  mapper.insert(vo);
	    	  }else {
	    		  if(mapper.pa(vo.p_code,pid)+vo.getP_amount()<=pvo.getMax()) {
	    			  res.setAlertMsg("장바구니에 담았습니다");
	    			  res.setHref("list");
	    			  mapper.updateCart(vo);//동일상품이고 더한값이 재고량 안넘엇을떄
	    		  }else {
	    			  

	    			  res.setAlertMsg("재고 초과입니다");
	    			  res.setHref("../product/detail?p_code="+vo.p_code);
	    		  }
	    		  
	    	  }
	    	     	  
		    	  
	      }
	      
	     
	      return res;	
		 

	}

}
