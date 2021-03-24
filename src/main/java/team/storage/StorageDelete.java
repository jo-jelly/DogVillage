package team.storage;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import team.Action;
import team.Product.ProductVO;


@Service("storagedelete")
public class StorageDelete implements Action{

	@Resource
	StorageMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("storage/delete execute() 실행");
		StorageVO vo = (StorageVO)map.get("svo");
		
		List<StorageVO> aaa = mapper.imgList(vo);
		
		String path = req.getRealPath("/up");
		path = "D:\\Lester\\sts_mvc_work\\t_proj\\src\\main\\webapp\\img";
		
		File ff = new File(path + "\\" + aaa.get(0).getP_image());		
		if(ff.exists()){
			ff.delete();
			System.out.println("파일 삭제됨");
		}else{
			System.out.println("파일 없음");
		}
		
		File ff1 = new File(path + "\\" + aaa.get(0).getP_image_d());		
		if(ff1.exists()){
			ff1.delete();
			System.out.println("파일 삭제됨");
		}else{
			System.out.println("파일 없음");
		}
		
		File ff2 = new File(path + "\\" + aaa.get(0).getP_image_m());		
		if(ff2.exists()){
			ff2.delete();
			System.out.println("파일 삭제됨");
		}else{
			System.out.println("파일 없음");
		}
		
		
		return mapper.delete(vo.p_code);
	}

}
