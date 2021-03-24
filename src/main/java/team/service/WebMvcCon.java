package team.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcCon implements WebMvcConfigurer {
	
	@Resource
	EventInterceptor interceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {

		registry.addInterceptor(interceptor)

		.addPathPatterns("/admin/**")
		.excludePathPatterns("/admin/login/adminLoginReg");

	}
	
}
