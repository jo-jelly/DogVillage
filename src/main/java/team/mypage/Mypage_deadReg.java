package team.mypage;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;
import team.customer.CustomerMapper;
import team.customer.CustomerVO;


@Service("mypagemypage_deadReg")
public class Mypage_deadReg implements Action{

	@Resource
	CustomerMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		CustomerVO vo = (CustomerVO)map.get("cvo");
		
		System.out.println("dead/delete execute() 실행" + vo);
		
		return mapper.delete(vo.no);
		
	}
	

}
