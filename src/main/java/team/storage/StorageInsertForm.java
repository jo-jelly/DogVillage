package team.storage;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("storageinsertForm")
public class StorageInsertForm implements Action{

	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("storage/insertForm execute() 실행");
		
		
		return null;
	}

}
