package team.service;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

@Service
public class EventInterceptor_C implements HandlerInterceptor {

   @Override
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
         throws Exception {

      HttpSession session = request.getSession();
      System.out.println("preHandle() 진입");
      
  	  String pid = (String) session.getAttribute("id");
  	  System.out.println("pid확인"+pid);
      

      
      if ((String) session.getAttribute("id") != null)
         pid = (String) session.getAttribute("id");
      
      if (pid==null) {

         response.sendRedirect("/projectMenu/login/loginMainForm");
         return false;
      }
      return true;
   }

}