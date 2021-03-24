package team.login;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.boot.web.servlet.server.Session;
import org.springframework.stereotype.Service;

import team.Action;
import team.join.JoinMapper;

@Service("loginlogout")
public class Logout implements Action{

	@Resource
	JoinMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("login/loginMainForm execute() 실행");
		req.removeAttribute("id");
	    req.setAttribute("msgpw", null);
	    req.setAttribute("msgidpw", null);
	  
	    return null;

	}
}
