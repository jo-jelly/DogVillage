package team.login;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;
import team.join.JoinMapper;

@Service("loginloginMainForm")
public class LoginMainForm implements Action{

	@Resource
	JoinMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("login/loginMainForm execute() 실행");
		/*
		 * JoinVO vo = (JoinVO)map.get("jvo"); mapper.login(vo);
		 */
		return null;

	}
}
