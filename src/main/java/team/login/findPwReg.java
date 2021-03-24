package team.login;


import java.util.HashMap;




import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;
import team.join.JoinVO;


@Service("loginfindPwReg")
public class findPwReg implements Action{

	@Resource
	LoginMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		System.out.println("login/fingPwReg execute() 실행");
			
			JoinVO vo = (JoinVO)map.get("jvo");
			System.out.println("vo"+vo);
			return mapper.findPw(vo.id, vo.getMail());
			
			}

	
}
/*
 * mapper.login(vo.id);
 * 
 * System.out.println("~~~~~~~~~~~~~after~vo : " + vo); JoinVO loginVO = new
 * JoinVO(); System.out.println("~~~~~~~~~loginVO:" + loginVO); if(vo.id ==
 * null) { loginVO.setId(vo.getId()); loginVO.setName(vo.getName());
 */
/*
 * HttpSession httpSession = req.getSession(true);
 * System.out.println("~~~~~~~~~~~~~~~~httpSession : " + httpSession); //
 * "USER"로 sessionVO를 세션에 바인딩한다. httpSession.setAttribute("USER", loginVO); }
 * else { return null; }
 */