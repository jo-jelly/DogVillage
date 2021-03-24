package team.payment;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import team.Action;
import team.Cart.CartVO;
import team.Product.ProductVO;
import team.customer.CustomerMapper;
import team.customer.CustomerVO;


@Service("paymentpayment_P")
public class PaymentForm implements Action{

	  @Resource 
	  BeforePaymentMapper mapper;	  
	  
		@Override
		public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

			/*
			 * //세션 불러오기 HttpSession session = req.getSession(); session.getAttribute("id");
			 * 
			 * //세션 아이디를 pid변수에 저장 String pid = (String) session.getAttribute("id");
			 * System.out.println("pid : "+pid);
			 */
		
			List<CartVO> aaa = new ArrayList<>();
			//파라메터의 code배열을 하나씩 가져오기
			String[] cp_code = req.getParameterValues("c_code");
			
			
			
			  for (int i = 0; i < cp_code.length; i++) {
				  
				  System.out.println("<여기>cp_code: " + cp_code[i]); //222,333 
			
				  CartVO buf = mapper.detail(Integer.parseInt(cp_code[i]));
				  aaa.add(buf);
				  System.out.println("코드번호 : "+buf.getP_code());
				 
			  }
			  
				/* System.out.println(" aaa: " + aaa.get(0).getId()); 아이디 */
			  
			  CustomerVO p_diliver = mapper.pay_diliver(aaa.get(0).getId());
			  System.out.println("p_diliver: "+p_diliver);
			  
			  
			  BeforePaymentVO res = new BeforePaymentVO();
			  
			  res.setPay_prod(aaa);
			  System.out.println("aaa : "+ aaa);
			  res.setCustomervo(p_diliver);
			  
			  System.out.println("Res: "+res);
			  
			  
			return res;
		}
	
	
}
