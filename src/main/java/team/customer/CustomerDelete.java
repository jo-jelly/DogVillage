package team.customer;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("customer_managercustomerDelete")
public class CustomerDelete implements Action{

	@Resource
	CustomerMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("customer/customerDelete execute() 실행");
		
		  CustomerVO vo = (CustomerVO)map.get("cvo");
		  
		  return mapper.delete(vo.no);
		
	}
	

}
