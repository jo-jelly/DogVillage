package team.mypage;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;
import team.customer.CustomerMapper;
import team.customer.CustomerVO;


@Service("mypagemypage_inforReg")
public class Mypage_inforReg implements Action{

	@Resource
	CustomerMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		System.out.println("inforReg/list execute() 실행");
		
		CustomerVO vo = (CustomerVO)map.get("cvo");
		mapper.modify2(vo);
		return null;
	}
	

}
