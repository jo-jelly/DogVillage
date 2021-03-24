package team.Cart;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;
import team.Product.ProductVO;
import team.Review.ReviewVO;

@Service("cartmodify")
public class CartModify implements Action{

	@Resource
	CartMapper mapper;
	
	@Override
	public Object execute(HashMap<String,Object> map, HttpServletRequest req) {

		System.out.println("cart/modify execute()실행");
		CartVO vo =(CartVO)map.get("ctvo");
		System.out.println(vo.c_code);
		System.out.println(vo.p_amount);
//		vo.setOrders(orders);
		mapper.modify(vo);
		
		
		return null; 
	}

}

