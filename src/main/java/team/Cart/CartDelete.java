package team.Cart;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;

@Service("cartdelete")
public class CartDelete implements Action{

	@Resource
	CartMapper mapper;
	
	@Override
	public Object execute(HashMap<String,Object> map, HttpServletRequest req) {

		System.out.println("cart/delete execute()실행");
		CartVO vo =(CartVO)map.get("ctvo");
		
		
		
		List<CartVO> aaa = new ArrayList<>();
		//파라메터의 code배열을 하나씩 가져오기
		String[] cp_code = req.getParameterValues("c_code"); //배열로받은거 이건 스트링으로 받아짐
		
		
		  for (int i = 0; i < cp_code.length; i++) {
			  
			  System.out.println("<여기>cp_code: " + cp_code[i]); //222,333 
			  
		
			  mapper.delete(cp_code[i]);
			  
			 
		  }
		
		System.out.println("값"+vo.c_code);
		
		
		
//		mapper.delete(vo.c_code);
		return 	null;

	}

}
