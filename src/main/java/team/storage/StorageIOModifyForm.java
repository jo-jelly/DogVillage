package team.storage;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("storageioModifyForm")
public class StorageIOModifyForm implements Action{

	@Resource
	StorageMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("storage/ioModifyForm execute() 실행");
		
		StorageVO vo = (StorageVO)map.get("svo");
		
		return mapper.detail(vo.p_code);
	}

}
