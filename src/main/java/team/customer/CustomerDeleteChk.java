package team.customer;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("customer_managercustomerDeleteChk")
public class CustomerDeleteChk implements Action{

	@Resource
	CustomerMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("customer/customerDeleteChk execute() 실행");
		
		/* return mapper.list(); */
	
		/* CustomerVO vo = (CustomerVO)map.get("cvo"); */
		  
		  return null;
		 
	}
	

}
