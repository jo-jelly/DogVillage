package team.login;

import java.util.HashMap;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;
import team.join.JoinMapper;

@Service("loginfindPw")
public class FindPw implements Action{

	@Resource
	JoinMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("login/loginMainForm execute() 실행");

		 return null;
	}
}
