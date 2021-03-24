package team.join;


import java.util.List;




import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface JoinMapper {
	
	  List<JoinVO> list();

	   void insert(JoinVO vo);

	  public JoinVO idChk(String id);
	
}
