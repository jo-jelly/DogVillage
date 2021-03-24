package team.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcCon_C implements WebMvcConfigurer {
   
   @Resource
   EventInterceptor_C interceptor;
   
   @Override
   public void addInterceptors(InterceptorRegistry registry) {

      registry.addInterceptor(interceptor)

      .addPathPatterns("/projectMenu/mypage/**");
     
   }
   
}