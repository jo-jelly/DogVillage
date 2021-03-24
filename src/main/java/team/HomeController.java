package team;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

   @RequestMapping("/home")
   public String home() {
      
      System.out.println("pro_home 들어온다!!!!");
      return "home";
   }
}