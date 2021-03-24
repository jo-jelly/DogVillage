package team.mypage;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;
import team.customer.CustomerMapper;
import team.customer.CustomerVO;


@Service("mypagemypage_inforForm")
public class Mypage_inforForm implements Action{

	@Resource
	CustomerMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		
		CustomerVO vo = (CustomerVO)map.get("cvo");
		
		System.out.println("inforForm/modify execute() 실행"+vo);
		
		return mapper.detail(vo.no);
	}
	

}
