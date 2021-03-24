package team.join;

import java.util.HashMap;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("joinjoinMainReg")
public class JoinMainReg implements Action{

		@Resource
		JoinMapper mapper;
		
		@Override
		public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

			System.out.println("join/joinMainReg execute() 실행");
			JoinVO vo = (JoinVO)map.get("jvo");
			mapper.insert(vo);
			System.out.println("@@@@@@@@@@@@vo: "+vo);
			return null;
		}
	
	
}
