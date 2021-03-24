package team.customer;

import java.util.List;



import org.apache.ibatis.annotations.Mapper;

import team.storage.StorageVO;

@Mapper
public interface CustomerMapper {//xml이랑 이름같아야됨 dtd파일로 내부
	
		List<CustomerVO> list();
		
		List<CustomerVO> listmy(String pid);
	
		List<CustomerVO> listSch(CustomerVO vo);

		List<CustomerVO> listBe(CustomerVO vo);
		
		
		List<CustomerVO> list(int start, int end);
	 
	   CustomerVO detail(int no);

	   CustomerVO detail_id(String id);
	 
	   void insert(CustomerVO vo);
	  
	   void modify(CustomerVO vo);
	   
	   void modify2(CustomerVO vo);
	   
	   int delete(int vo);
	
	   int totalCnt();
}
