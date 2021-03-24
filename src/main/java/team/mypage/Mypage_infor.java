package team.mypage;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import team.Action;
import team.customer.CustomerMapper;
import team.customer.CustomerVO;


@Service("mypagemypage_infor")
public class Mypage_infor implements Action{

	@Resource
	CustomerMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		System.out.println("infor/list execute() 실행");
		
		HttpSession session = req.getSession();
		String pid = (String) session.getAttribute("id");

		System.out.println("pid확인"+pid);
		
		return mapper.listmy(pid);
	}


}
