package team.notice;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("noticedetail")
public class NoticeDetail implements Action{

	@Resource
	NoticeMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("notice/detail execute() 실행");
		
		NoticeVO vo = (NoticeVO)map.get("nvo");
		
		mapper.addCount(vo.n_code);
		return mapper.detail(vo.n_code);
	}

}
