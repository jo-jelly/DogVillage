package team.join;

import java.util.HashMap;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import team.Action;


@Service("joinID_Check")
@ResponseBody
public class JoinIdChk implements Action{

   @Resource
   JoinMapper mapper;
   
   @Override
   public Object execute(HashMap<String, Object> map, HttpServletRequest req) {      
      System.out.println("idChk execute() 실행");
      
       String joinid = String.valueOf(req.getParameter("id"));    
      System.out.println("joinid:" + joinid);
      
      JoinVO idCheck = mapper.idChk(joinid);
      System.out.println("idCheck : "+idCheck);
      
      if(idCheck != null) {//결과 값이 있으면 아이디 존재   
         return "{\"rrr\":\"1\"}";
      } else {      //없으면 아이디 존재 X
         System.out.println(" idCheck 는 null");
         return "{\"rrr\":\"0\"}";
      }
      
   }
   

}