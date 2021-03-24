package team.Ad_Review;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface Ad_ReviewMapper {
	
	List<Ad_ReviewVO> list(Ad_ReviewVO vo,int start, int end);
	//List<ProductVO> listSch(ProductVO vo); 검색
	Ad_ReviewVO detail(int no); //디테일
	
	void insert(Ad_ReviewVO vo); //관리자용
	int delete(Ad_ReviewVO vo); //관리자용
	
	int totalCnt(); //리뷰 총 갯수 페이징때씀
}
