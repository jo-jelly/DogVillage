package team.adjustment;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("adjustmentcate")
public class AdjustmentCate implements Action{

	@Resource
	AdjustmentMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		System.out.println("adjustment/cate execute() 실행");
		
		AdjustmentVO vo = (AdjustmentVO)map.get("avo");
		
		
		if(vo.getMonth()!=null) {
			switch (vo.getMonth()) {
			case 1:
				return mapper.list1();
			case 3:
				return mapper.list3();
			case 6:
				return mapper.list6();
			default:
				break;
			}
		}
		
		return mapper.list();
	}

}
