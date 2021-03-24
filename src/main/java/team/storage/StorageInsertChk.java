package team.storage;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;

@Service("storageinsertChk")
public class StorageInsertChk implements Action{

	@Resource
	StorageMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("storageinsertChk execute() 실행");
	      
	      String name = String.valueOf(req.getParameter("name"));    
	      System.out.println("name:" + name);
	      if(name==null || name=="") {
	    	  return "{\"rrr\":\"2\"}";
	      }
	      StorageVO insChk = mapper.insertChk(name);
	      System.out.println("insChk : "+insChk);
	      
	      if(insChk != null) {
	         return "{\"rrr\":\"1\"}";
	      } else { 
	         System.out.println(" idCheck 는 null");
	         return "{\"rrr\":\"0\"}";
	      }
	}
}
