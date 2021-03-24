
  package team.payment;
  
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource; 
  import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Service;
  
  import team.Action;
import team.Cart.CartVO;
import team.Product.ProductVO;
import team.tms.TmsVO;
  
  @Service("paymentpaymentReg") 
  public class PaymentReg  implements Action{
  
	  @Resource 
	  PaymentMapper mapper;
	  
	  @Override 
	  	public Object execute(HashMap<String, Object> map,HttpServletRequest req) {
			System.out.println("Payment/PaymentReg execute() 실행");		
			TmsVO vo = (TmsVO)map.get("tvo");
			ProductVO vo2 = (ProductVO)map.get("pvo");
			
			String [] first = vo.t_pname.split("/");
			//first[0] 맛있는사료1,6
			//first[1] 맛있는사료2,6
			for (String str : first) {
				String [] second = str.split(",");
				System.out.println("수량:"+second[1]);
				vo2.setP_name(second[0]);
				
				List<ProductVO> aaa = mapper.listStorage(vo2);//상품정보받아오려고
			
				mapper.slice(Integer.parseInt(second[1]), aaa.get(0).getP_code());
			
				
			}
			
			
			
			
			
			mapper.insertT(vo);	
	
		
			//c_code가 int형이라 받아올때 올때 변환이 어려워 name 에 c_code를 a,b,c,형식으로 문자형으로 데려옴
			CartVO cv = (CartVO)map.get("ctvo");
			System.out.println("cartvo를 봐보자 :" + cv);
			
			String [] c_code = cv.getName().split(",");
			System.out.println("c_codr 는" + Arrays.toString(c_code));
			
			for (String str : c_code) {
				 mapper.delete(Integer.parseInt(str));
			}


			System.out.println("@@@after mapper VO:" +vo);
			return null;
	  }
  
  
  }
 