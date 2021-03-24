package team.join;


import java.util.List;



import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminJoinMapper {
	
	  List<AdminJoinVO> list();

	   void insert(AdminJoinVO vo);
	   
	  AdminJoinVO login(String id);
	
}
