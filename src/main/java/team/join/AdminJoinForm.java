package team.join;

import java.util.HashMap;



import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;

@Service("joinadminJoinForm")
public class AdminJoinForm implements Action{

		
		
		@Override
		public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

			System.out.println("join/adminJoinForm execute() 실행");
		
			return null;
		}
	
}
