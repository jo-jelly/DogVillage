package team.Main;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface MainMapper {

	List<MainVO> mainList();
	
}
