package team;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InterceptorController {
	
	@RequestMapping("/interceptor/event")
	String event() {
		System.out.println("event() 실행");
		return "interceptor/event";
	}
	
	@RequestMapping("/interceptor/fail")
	String fail() {
		
		return "interceptor/fail";
	}
	
}
