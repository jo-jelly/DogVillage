package team.Cart;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import team.Product.ProductVO;
import team.Review.ReviewVO;

@Mapper
public interface CartMapper {

	List<CartVO> list(String id); // 장바구니목록String userid

	void insert(CartVO vo); // 장바구니추가

	void insertfirst(CartVO vo);// 카트에 아무것도없을떄 첫번째로가는거


	void delete(String c_code); // 여러개 삭제 스트링으로바껴서 스트링으로받ㅇ
	

	void modify(CartVO vo); // 하나수정 //CartVO vo

	int totalCnt();
	// 전체장바구니 상품갯수
	
	int mytotalCnt(String id); //로그인한사람 장바구니갯수
	
	int sameCart(int p_code,String id); //장바구니 동일상품있나 확인
	
	int updateCart(CartVO vo);// 장바구니에 있으면 수량 변경(추가)
	int pa(int p_code,String id);//장바구니에 있는 그 상품코드의 들어있는수량
	
	}
