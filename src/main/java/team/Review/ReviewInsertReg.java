package team.Review;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import team.Action;
import team.storage.FileUpload;

@Service("reviewinsertReg")
public class ReviewInsertReg implements Action{

	@Resource
	ReviewMapper mapper;
	
	@Override
	public Object execute(HashMap<String,Object> map, HttpServletRequest req) {

		System.out.println("review/insertReg execute()실행");
		
		ReviewVO vo =(ReviewVO)map.get("rvo");
	    HttpSession session = req.getSession();
	    String pid = (String) session.getAttribute("id");

	    System.out.println("pid확인"+pid);
	    vo.setId(pid);		 
	    vo.getId();
		
		System.out.println(vo.getP_code());
		System.out.println(vo.p_code);
		
		vo.setR_image(FileUploadR.fileUpload(vo.getR_imgfileFF(), req));
												//멀티파티 로해야함
		
		if(mapper.totalCnt()==0) { //최대길이
			mapper.insertfirst(vo);
		}else {
		
		mapper.insert(vo); 	
		}

		return null;
	}

}
