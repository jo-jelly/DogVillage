package team.notice;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("noticeinsertForm")
public class NoticeInsertForm implements Action{

	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("notice/insertForm execute() 실행");
		
		
		return null;
	}

}
