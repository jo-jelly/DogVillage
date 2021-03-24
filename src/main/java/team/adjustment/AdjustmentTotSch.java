package team.adjustment;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("adjustmenttotSch")
public class AdjustmentTotSch implements Action{
	
	@Resource
	AdjustmentMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("adjustment/totSch execute() 실행");
		
		AdjustmentVO vo = (AdjustmentVO)map.get("avo");
		
		return mapper.totSchList(vo);
	}

}
