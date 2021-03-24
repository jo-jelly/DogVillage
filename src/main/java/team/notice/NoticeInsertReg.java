package team.notice;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import team.Action;

@Service("noticeinsertReg")
public class NoticeInsertReg implements Action{

	@Resource
	NoticeMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("storage/insertReg execute() 실행");
		NoticeVO vo = (NoticeVO)map.get("nvo");
		HttpSession session = req.getSession();

		String id = "";
		if ((String) session.getAttribute("id") != null)
			id = (String) session.getAttribute("id");
		System.out.println("아이디체크:"+id);
		vo.setN_name(id);
		vo.setN_cnt(0);
		mapper.insert(vo);
		
		return null;
		
	}
}
