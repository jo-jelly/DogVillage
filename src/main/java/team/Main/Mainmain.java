package team.Main;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("mainmain")
public class Mainmain implements Action{
	
	@Resource
	MainMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("main/main execute() 실행");
		return mapper.mainList();
	}

}
