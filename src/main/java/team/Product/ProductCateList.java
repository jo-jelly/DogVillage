package team.Product;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;

@Service("productcateList")
public class ProductCateList implements Action{

	@Resource
	ProductMapper mapper;
	
	@Override
	public Object execute(HashMap<String,Object> map, HttpServletRequest req) {
		System.out.println("product/cateList execute()실행");
		
		ProductVO vo = (ProductVO)map.get("pvo");
		
		
		return mapper.list();
	}

}
