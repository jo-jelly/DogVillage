package team.storage;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("storagemodifyReg")
public class StorageModifyReg implements Action{

	@Resource
	StorageMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("storage/modifyReg execute() 실행");
		
		StorageVO vo = (StorageVO)map.get("svo");

		
		
		if(vo.getP_imageFF()!=null)
			vo.setP_image(FileUpload.fileUpload(vo.getP_imageFF(), req));
		if(vo.getP_imageFF_d()!=null)
			vo.setP_image_d(FileUpload.fileUpload(vo.getP_imageFF_d(), req));
		if(vo.getP_imageFF_m()!=null)
			vo.setP_image_m(FileUpload.fileUpload(vo.getP_imageFF_m(), req));
		mapper.modify(vo);
		return null;
	}

}
