package team.storage;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("storageioListSch")
public class StorageIOListSch implements Action{
	
	@Resource
	StorageMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("storage/ioListSch execute() 실행");
		
		StorageIOVO vo = (StorageIOVO)map.get("iovo");
		
		return mapper.ioListSch(vo);
	}
	

}
