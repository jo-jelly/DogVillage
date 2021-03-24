package team.payment;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import team.Cart.CartVO;
import team.customer.CustomerVO;



@Mapper
public interface BeforePaymentMapper {
	
	List<BeforePaymentVO> pay_prod();
	
	List<BeforePaymentVO> insert();
	
	List<CartVO> list(CartVO vo);
	
	CartVO detail(int c_code);
	
	CustomerVO pay_diliver(String id);
}
 