package team.tms;

import java.util.HashMap;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("tmsinvoice")
public class TmsInvoice implements Action{

	@Resource
	TmsMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		System.out.println("tms/invoice execute() 실행");
		
		TmsVO vo = (TmsVO)map.get("tvo");
		Random rr = new Random();
		String invoicen1 = Integer.toString(rr.nextInt(9))+Integer.toString(rr.nextInt(9))+Integer.toString(rr.nextInt(9))+Integer.toString(rr.nextInt(9));
		String invoicen2 = Integer.toString(rr.nextInt(9))+Integer.toString(rr.nextInt(9))+Integer.toString(rr.nextInt(9))+Integer.toString(rr.nextInt(9));
		System.out.println(invoicen1);
		System.out.println(invoicen2);
		vo.setT_status("배송중");
		vo.setT_invoicen("2021-"+invoicen1+"-"+invoicen2);
		
		mapper.invoice(vo);
		
		
		return null;
	}

}
