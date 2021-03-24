package team.customer;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;

@Service("customer_managerlistBe")
public class CustomerListBe implements Action{

	@Resource
	CustomerMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("customer/listBe execute() 실행");
		CustomerVO vo = (CustomerVO)map.get("cvo");
		System.out.println("vo.grade는 :" + vo.grade);
		return mapper.listBe(vo);
	}

}
