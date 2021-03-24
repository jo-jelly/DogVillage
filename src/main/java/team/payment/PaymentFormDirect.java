package team.payment;



import java.util.HashMap;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;


import team.Action;

import team.Product.ProductVO;

import team.customer.CustomerVO;


@Service("paymentpayment_Direct")
public class PaymentFormDirect implements Action{

	  @Resource 
	  PaymentDirectMapper mapper;	  
	  
		@Override
		public Object execute(HashMap<String, Object> map, HttpServletRequest req) {		
			System.out.println("여기는 결제 다이렉트");
			
			
	
			
			int p_code= Integer.parseInt(req.getParameter("p_code"));
			int p_amount= Integer.parseInt(req.getParameter("p_amount"));
			
			//로그인 아이디 가져오기
			HttpSession session = req.getSession();
			String pid = (String) session.getAttribute("id");

			//메퍼에 넣기
			CustomerVO D_Customer = mapper.pay_diliver(pid);
			ProductVO D_Product = mapper.direct_detail(p_code);
			
			System.out.println("D_Customer : " + D_Customer);
			System.out.println("D_Product : " + D_Product);
			
			//수량 지정  
			D_Product.setP_amount(p_amount);
			  
//			System.out.println("D_Product set: " + D_Product);
			
			//객체생성
			  PaymentDirectVO res = new PaymentDirectVO();
			  
			 //PaymentDirectVO에 넣어주기 
			  res.setProductvo(D_Product);
			  res.setCustomervo(D_Customer);

		
			  
			return res;
		}
	
	
}
