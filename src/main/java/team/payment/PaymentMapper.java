package team.payment;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import team.Cart.CartVO;
import team.Product.ProductVO;
import team.storage.StorageVO;
import team.tms.TmsVO;


@Mapper
public interface PaymentMapper {
	
	List<PaymentVO> list();
	
	PaymentVO detail(int no);
	
	void insert(PaymentVO vo);
	
	void modify(PaymentVO vo);
	
	int delete(int c_code);
	
	void insertT(TmsVO vo);

	List<ProductVO> listStorage(ProductVO vo);

	List<CartVO> deleteList(int c_code);
	
	void slice(int cnt, int p_code);
	
}
