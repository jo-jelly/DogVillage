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


@Service("mypagemypage_order_detail")
public class Mypage_order_detail implements Action{

	@Resource
	TmsMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		System.out.println("qna/detail execute() 실행");
	
		TmsVO vo = (TmsVO)map.get("tvo");
		
		return mapper.detail(vo.t_no);
	}
	

}
