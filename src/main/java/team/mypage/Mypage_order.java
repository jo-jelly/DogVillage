package team.mypage;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import team.Action;

import team.tms.TmsMapper;

@Service("mypagemypage_order")
public class Mypage_order implements Action{

	@Resource
	TmsMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		System.out.println("order/list execute() 실행");
		
		HttpSession session = req.getSession();
		String pid = (String) session.getAttribute("id");

		System.out.println("pid확인"+pid);
		
		return mapper.listmy(pid);
	}

}


