package team.mypage;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import team.Action;
import team.customer.CustomerMapper;

@Service("mypagemypage_deadChk")
public class Mypage_deadChk implements Action{

	@Resource
	CustomerMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		

		System.out.println("dead/deadChk execute() 실행") ;
		
		return null;
		
	}
	

}
