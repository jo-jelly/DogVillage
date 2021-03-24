
  package team.payment;
  
  import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource; 
  import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
  
  import team.Action;
import team.Cart.CartVO;
import team.Product.ProductVO;
import team.customer.CustomerVO;
import team.storage.StorageVO;
import team.tms.TmsVO;
  
  @Service("paymentpaymentDirectReg") 
  public class PaymentDirectReg  implements Action{
  
	  @Resource 
	  PaymentMapper mapper;
	  
	  @Override 
	  	public Object execute(HashMap<String, Object> map,HttpServletRequest req) {
			System.out.println("Payment/PaymentReg execute() 실행");		
			TmsVO vo = (TmsVO)map.get("tvo");
			ProductVO vo2 = (ProductVO)map.get("pvo");
			
			String [] first = vo.t_pname.split("/");

			for (String str : first) {
				String [] second = str.split(",");
				vo2.setP_name(second[0]);
				
				List<ProductVO> aaa = mapper.listStorage(vo2);
			
				mapper.slice(vo.getT_amount(), aaa.get(0).getP_code());
			
				
			}
			
			mapper.insertT(vo);	
			System.out.println("@@@after mapper VO:" +vo);
			
			return null;
	  }
  
  
  }
 