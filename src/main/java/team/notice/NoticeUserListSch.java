package team.notice;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("noticeuserListSch")
public class NoticeUserListSch implements Action{
	
	@Resource
	NoticeMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("storage/userListSch execute() 실행");
		NoticeVO vo = (NoticeVO)map.get("nvo");
		
		return mapper.listSch(vo);
	}
	

}
