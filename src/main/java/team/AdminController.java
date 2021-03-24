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
import team.adjustment.AdjustmentVO;
import team.customer.CustomerVO;
import team.join.AdminJoinVO;
import team.model.Kind;
import team.notice.NoticeVO;
import team.storage.StorageIOVO;
import team.storage.StorageVO;
import team.tms.TmsVO;


@Controller
@RequestMapping("admin/{menu}/{service}")
public class AdminController {

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
	Object admainData(
			StorageVO svo,
			CustomerVO cvo,
			Ad_ReviewVO rvo, 
			StorageIOVO iovo,
			TmsVO tvo,
			AdjustmentVO avo,
			AdminJoinVO ajvo,
			NoticeVO nvo,
			
			@PathVariable("menu")String menu,
			@PathVariable("service")String service,
			HttpServletRequest req
			) {
		System.out.println("data() 실행");
		
		Action action = provider.getContext().getBean(menu+service, Action.class);
		
		HashMap<String, Object> map = new HashMap<>();
		
		map.put("svo", svo);
		map.put("cvo", cvo);
		
		map.put("rvo", rvo);
		
		map.put("iovo", iovo);
		map.put("tvo", tvo);
		map.put("avo", avo);
		map.put("ajvo", ajvo);
		map.put("nvo", nvo);
		Object res = action.execute(map, req);
		System.out.println(res);
		return res;
//		return null;
	}
	
	
	@RequestMapping
	String view() {
		
		return "template_Admin";
	}
}
