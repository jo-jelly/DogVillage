package team.adjustment;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface AdjustmentMapper {

	
	
	List<AdjustmentVO> totList(int start, int end);
	
	int totalCnt();
	
	List<AdjustmentVO> totSchList(AdjustmentVO vo);
	
	List<AdjustmentVO> list();
	
	List<AdjustmentVO> list1();
	
	List<AdjustmentVO> list3();
	
	List<AdjustmentVO> list6();
	
	
}
