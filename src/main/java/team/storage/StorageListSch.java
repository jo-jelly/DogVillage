package team.storage;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("storagelistSch")
public class StorageListSch implements Action{
	
	@Resource
	StorageMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("storage/listSch execute() 실행");
		StorageVO vo = (StorageVO)map.get("svo");
		
		return mapper.listSch(vo);
	}
	

}
