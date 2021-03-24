package team.tms;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;
import team.Product.ProductVO;
import team.adjustment.AdjustmentVO;
import team.storage.StorageVO;


@Service("tmsdelivery")
public class TmsDelivery implements Action{

	@Resource
	TmsMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("tms/delivery execute() 실행");
		TmsVO vo = (TmsVO)map.get("tvo");
		StorageVO vo2 = (StorageVO)map.get("svo");
		AdjustmentVO vo3 = (AdjustmentVO)map.get("avo");
		
		String [] first = vo.t_pname.split("/");

		for (String str : first) {
			String [] second = str.split(",");
			vo2.setP_name(second[0]);
			
			List<ProductVO> aaa = mapper.listStorage(vo2);
		
			vo3.setAdj_code(aaa.get(0).getP_code());
			vo3.setAdj_name(aaa.get(0).getP_name());
			vo3.setAdj_price(aaa.get(0).getP_price());
			vo3.setAdj_cate(aaa.get(0).getP_cate());
			vo3.setAdj_cate_d(aaa.get(0).getP_cate_d());
			vo3.setAdj_amount(Integer.parseInt(second[1]));
			vo3.setAdj_totalprice(aaa.get(0).getP_price()*Integer.parseInt(second[1]));
			vo3.setAdj_pid(vo.t_pid);
			
			mapper.adjInsert(vo3);
			
		}
		
		vo.setT_status("배송완료");
		
		
		mapper.tmsDC(vo);
		
		
		return null;
	}

}
