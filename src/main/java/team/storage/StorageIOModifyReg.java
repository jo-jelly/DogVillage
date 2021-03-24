package team.storage;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("storageioModifyReg")
public class StorageIOModifyReg implements Action{

	@Resource
	StorageMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("storage/iomodifyReg execute() 실행");
		
		StorageVO vo = (StorageVO)map.get("svo");
		StorageIOVO ivo = new StorageIOVO();
		ivo.setIo_code(vo.p_code);
		ivo.setIo_name(vo.p_name);
		ivo.setIo_amount(vo.p_amount);
		ivo.setIo_content(vo.p_content);
		ivo.setIo_before_amount(vo.io_before_amount);
		
		mapper.ioModify(vo);
		mapper.ioInsert(ivo);
		return null;
	}

}
