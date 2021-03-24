package team.mypage;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;
import team.payment.PaymentMapper;
import team.payment.PaymentVO;
import team.tms.TmsMapper;
import team.tms.TmsVO;


@Service("mypagemypage_order_cancelReg")
public class Mypage_order_cancelReg implements Action{

	@Resource
	TmsMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		System.out.println("oredr/delete execute() 실행");

		TmsVO vo = (TmsVO)map.get("tvo");
		vo.setT_status("취소");
		mapper.modify(vo);
		return null;
	}
	

}
