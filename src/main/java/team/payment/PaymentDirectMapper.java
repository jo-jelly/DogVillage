package team.payment;


import org.apache.ibatis.annotations.Mapper;
import team.Product.ProductVO;
import team.customer.CustomerVO;



@Mapper
public interface PaymentDirectMapper {
	
	ProductVO direct_detail(int p_code);
	
	CustomerVO pay_diliver(String id);
}
 