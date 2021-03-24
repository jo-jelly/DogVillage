package team.Product;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import team.Cart.CartVO;


@Mapper
public interface ProductMapper {
	
	List<ProductVO> list();
	//List<ProductVO> listSch(ProductVO vo); 검색
	ProductVO detail(int no); //디테일
	
	List<ProductVO> cateDList(ProductVO vo,int start, int end);
	
	List<ProductVO> listSch(ProductVO vo,int start, int end);
	
	int totalCntSch(ProductVO vo);
	
	int totalCntCate_d(ProductVO vo);
//	int overlap(String pid,ProductVO vo);

//	void insert(ProductVO vo); //관리자용
//	void modify(int no); //관리자용
//	int delete(ProductVO vo); //관리자용
}
