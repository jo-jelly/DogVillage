package team.payment;

import team.Product.ProductVO;
import team.customer.CustomerVO;

public class PaymentDirectVO {
	
	ProductVO productvo;
	
	CustomerVO customervo;

	



	public ProductVO getProductvo() {
		return productvo;
	}





	public void setProductvo(ProductVO productvo) {
		this.productvo = productvo;
	}





	public CustomerVO getCustomervo() {
		return customervo;
	}





	public void setCustomervo(CustomerVO customervo) {
		this.customervo = customervo;
	}





	@Override
	public String toString() {
		return "PaymentDirectVO [productvo=" + productvo + ", customervo=" + customervo + "]";
	}



}
