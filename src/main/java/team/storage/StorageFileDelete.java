package team.storage;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import team.Action;


@Service("storageFileDeleteReg")
public class StorageFileDelete implements Action{

	@Resource
	StorageMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("storage/FileDeleteReg execute() 실행");
		StorageVO vo = (StorageVO)map.get("svo");
		
		List<StorageVO> aaa = mapper.imgList(vo);
		
		
		String path = req.getRealPath("/up");
		path = "D:\\Lester\\sts_mvc_work\\t_proj\\src\\main\\webapp\\img";

		File ff = null;	
		switch (vo.fileNum) {
		case 0:
			ff = new File(path + "\\" + aaa.get(0).getP_image());	
			if(ff.exists()){
				ff.delete();
				System.out.println("파일 삭제됨");
				mapper.fileModify0(vo);
			}else{
				System.out.println("파일 없음");
				mapper.fileModify0(vo);
			}
			break;
		case 1:
			ff = new File(path + "\\" + aaa.get(0).getP_image_d());
			if(ff.exists()){
				ff.delete();
				System.out.println("파일 삭제됨");
				mapper.fileModify1(vo);
			}else{
				System.out.println("파일 없음");
				mapper.fileModify1(vo);
			}
			break;
		case 2:
			ff = new File(path + "\\" + aaa.get(0).getP_image_m());	
			if(ff.exists()){
				ff.delete();
				System.out.println("파일 삭제됨");
				mapper.fileModify2(vo);
			}else{
				System.out.println("파일 없음");
				mapper.fileModify2(vo);
			}
			break;

		default:
			break;
		}

		return mapper.detail(vo.p_code);
	}

}
