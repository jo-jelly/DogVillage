package team.customer;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("customer_managercustomerModifyReg")
public class CustomerModifyReg implements Action{

	@Resource
	CustomerMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("customerModifyReg execute() 실행");
		
		CustomerVO vo = (CustomerVO)map.get("cvo");
		mapper.modify(vo);
		return null;
	}

}
