package team.storage;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;

@Service("storageinsertReg")
public class StorageInsertReg implements Action{

	@Resource
	StorageMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("storage/insertReg execute() 실행");
		StorageVO vo = (StorageVO)map.get("svo");

		
		vo.setP_image(FileUpload.fileUpload(vo.getP_imageFF(), req));
		vo.setP_image_d(FileUpload.fileUpload(vo.getP_imageFF_d(), req));
		vo.setP_image_m(FileUpload.fileUpload(vo.getP_imageFF_m(), req));
		
		mapper.insert(vo);
		
		return null;
		
	}
}
