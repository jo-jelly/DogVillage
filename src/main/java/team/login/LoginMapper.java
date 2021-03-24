
package team.login;

import org.apache.ibatis.annotations.Mapper;

import team.join.JoinVO;

@Mapper
public interface LoginMapper {
	
	   
	  JoinVO login(String id);
		  
	  JoinVO findPw(String id, String mail);
	  
}
