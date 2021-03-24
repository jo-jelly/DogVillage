package team.tms;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("tmslistSch")
public class TmsListSch implements Action{

	@Resource
	TmsMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		System.out.println("tms/listSch execute() 실행");
		TmsVO vo = (TmsVO)map.get("tvo");
		System.out.println("t_no:"+vo.t_no);
		
		return mapper.listSch(vo);
	}

}
