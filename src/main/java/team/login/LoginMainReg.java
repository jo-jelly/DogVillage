package team.login;


import java.util.HashMap;




import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import team.Action;
import team.join.JoinVO;


@Service("loginloginMainReg")
public class LoginMainReg implements Action{

   @Resource
   LoginMapper mapper;

   @Override
   public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

      HttpSession session = req.getSession();
      System.out.println("login/loginMainReg execute() 실행");
      JoinVO vo = (JoinVO) map.get("jvo");
      System.out.println("~~~~~~~~~~~~~before~vo : " + vo); // 입력한 아이디와 비밀번호값이 들어있다.

      LoginAlertVO res = new LoginAlertVO();
      //기본 설정을 로그인 실패로 해놨다.
      res.setMsg("로그인 실패");
      res.setUrl("../login/loginMainForm");
      
      JoinVO user = mapper.login(vo.id); // 들어온 정보를 user에 저장

      if (user != (null)) { //들어온 저장값이 있을때 
         
         if(user.getGrade().equals("활성")
            && user.getPw().equals(vo.getPw())) {
            res.setMsg("로그인 성공");
            res.setUrl("../main/main");            
            session.setAttribute("id", user.getId());
            session.setAttribute("grade", user.getGrade());
         }
         
         if(user.getGrade().equals("관리자")
            && user.getPw().equals(vo.getPw())){
            res.setMsg("관리자 로그인 성공");
            res.setUrl("../../admin/storage/list");            
            session.setAttribute("id", user.getId());
            session.setAttribute("grade", user.getGrade());
         }
      }
      return res;
   }
}