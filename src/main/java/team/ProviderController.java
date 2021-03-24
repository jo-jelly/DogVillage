package team;


import java.util.ArrayList;


import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import team.Ad_Review.Ad_ReviewVO;
import team.Cart.CartVO;
import team.Product.ProductVO;
import team.Review.ReviewVO;
import team.customer.CustomerVO;
import team.join.AdminJoinVO;
import team.join.JoinVO;
import team.model.Kind;
import team.notice.NoticeVO;
import team.payment.BeforePaymentVO;
import team.payment.PaymentDirectVO;
import team.payment.PaymentVO;
import team.tms.TmsVO;


@Controller
@RequestMapping("projectMenu/{menu}/{service}")
public class ProviderController {

	@Resource
	MyProvider provider;
	
	@ModelAttribute
	Kind kind(
			@PathVariable("menu")String menu,
			@PathVariable("service")String service
			) {
		Kind kind = new Kind();
		kind.setMenu(menu);
		kind.setService(service);
		kind.setServiceUrl(menu+"/"+service+".jsp");
		return kind;
	}
	
	@ModelAttribute("data")
	Object mainData(
			ProductVO pvo, 
			ReviewVO rvo, 
			CartVO ctvo,
			CustomerVO cvo,
			JoinVO jvo,
			PaymentVO payvo,		
			BeforePaymentVO bpvo,
			TmsVO tvo,
			AdminJoinVO ajvo,
			PaymentDirectVO pdvo,
			NoticeVO nvo,
			@PathVariable("menu")String menu,
			@PathVariable("service")String service,
			HttpServletRequest req
			) {
		System.out.println("mainData() 실행");
		
		Action action = provider.getContext().getBean(menu+service, Action.class);
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("ctvo", ctvo);
		map.put("pvo", pvo);
		map.put("rvo", rvo);
		map.put("cvo", cvo);
		map.put("jvo", jvo);
		map.put("payvo", payvo);
		map.put("bpvo", bpvo);
		map.put("tvo", tvo);
		map.put("ajvo", ajvo);
		map.put("pdvo", pdvo);
		map.put("nvo", nvo);
		Object res = action.execute(map, req);
		System.out.println(res);
		return res;
//		return null;
	}
	
	
	@RequestMapping
	String view() {
		
		return "template";
	}
}
