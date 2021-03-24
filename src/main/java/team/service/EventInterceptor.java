package team.service;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

@Service
public class EventInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();
		
		System.out.println("preHandle() 진입");

		String grade = "";
		
		if ((String) session.getAttribute("grade") != null)
			grade = (String) session.getAttribute("grade");
		
		if (!grade.equals("관리자")) {

			response.sendRedirect("/projectMenu/main/main");
			return false;
		}
		return true;
	}

}
