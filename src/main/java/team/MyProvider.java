package team;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;
//service component 아무거로나 가져기오면됨
@Component
public class MyProvider implements ApplicationContextAware {
	ApplicationContext context;
	
	
	
	public ApplicationContext getContext() {
		return context;
	}



	@Override
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		// TODO Auto-generated method stub
		context = applicationContext;
	}

}
