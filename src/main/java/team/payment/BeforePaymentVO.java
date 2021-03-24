package team.payment;

import java.util.List;



import team.Cart.CartVO;
import team.customer.CustomerVO;
public class BeforePaymentVO {
	
	List<CartVO> pay_prod;

	/* List<CartVO> find_p_code; */  //배열 c_code로 cart에 가서 p_code를 찾기
	
	CustomerVO customervo;

	
	

	public List<CartVO> getPay_prod() {
		return pay_prod;
	}




	public void setPay_prod(List<CartVO> pay_prod) {
		this.pay_prod = pay_prod;
	}




	public CustomerVO getCustomervo() {
		return customervo;
	}




	public void setCustomervo(CustomerVO customervo) {
		this.customervo = customervo;
	}




	@Override
	public String toString() {
		return "BeforePaymentVO [pay_prod=" + pay_prod + ", customervo=" + customervo + "]";
	}



	


	
}
