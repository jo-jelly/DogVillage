package team.customer;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("customer_managercustomerModifyForm")
public class CustomerModifyForm implements Action{

	@Resource
	CustomerMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("customerModifyForm execute() 실행");
		
		CustomerVO vo = (CustomerVO)map.get("cvo");
		
		return mapper.detail(vo.no);
	}

}
