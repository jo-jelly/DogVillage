package team.join;

import java.util.HashMap;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("joinadminjoinReg")
public class AdminJoinReg implements Action{

		@Resource
		AdminJoinMapper mapper;
		
		@Override
		public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

			System.out.println("join/adminjoinReg execute() 실행");
			AdminJoinVO vo = (AdminJoinVO)map.get("ajvo");
			mapper.insert(vo);
			System.out.println("@@@@@@@@@@@@vo: "+vo);
			return null;
		}
	
	
}
