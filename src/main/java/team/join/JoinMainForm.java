package team.join;

import java.util.HashMap;



import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;

@Service("joinjoinMainForm")
public class JoinMainForm implements Action{

		
		
		@Override
		public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

			System.out.println("join/joinMainForm execute() 실행");
		
			return null;
		}
	
}
