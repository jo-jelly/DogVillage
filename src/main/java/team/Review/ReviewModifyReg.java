package team.Review;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import team.Action;
import team.storage.FileUpload;

@Service("reviewmodifyReg")
public class ReviewModifyReg implements Action{

	@Resource
	ReviewMapper mapper;
	
	@Override
	public Object execute(HashMap<String,Object> map, HttpServletRequest req) {

		System.out.println("review/modifyReg execute()실행");
		
		ReviewVO vo =(ReviewVO)map.get("rvo");
	    HttpSession session = req.getSession();
	    String pid = (String) session.getAttribute("id");
	    vo.setId(pid);	
	 
		if(vo.getR_imgfileFF()!=null)
			vo.setR_image(FileUploadR.fileUpload(vo.getR_imgfileFF(), req));

		
		mapper.modify(vo);
		
		return null;	

	}

}
