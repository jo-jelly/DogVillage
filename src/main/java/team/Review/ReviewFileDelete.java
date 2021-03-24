package team.Review;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import team.Action;


@Service("reviewFileDeleteReg")
public class ReviewFileDelete implements Action{

	@Resource
	ReviewMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("review/FileDeleteReg execute() 실행");
		ReviewVO vo = (ReviewVO)map.get("rvo");
	    HttpSession session = req.getSession();
	    String pid = (String) session.getAttribute("id");
	    vo.setId(pid);	
		List<ReviewVO> aaa = mapper.imgList(vo);
		
		
		String path = req.getRealPath("/up");
		path = "C:\\Users\\82109\\workspace\\sts_mvc_work\\t_proj1223청지우\\t_proj1223밤\\src\\main\\webapp\\img";
		File ff = null;	

			ff = new File(path + "\\" + aaa.get(0).getR_image());	
			if(ff.exists()){
				ff.delete();
				System.out.println("파일 삭제되었다");
				mapper.fileModify(vo);
			}else{
				System.out.println("파일 없습니다");
				mapper.fileModify(vo);
			}

		return mapper.detail(vo.r_code);
	}

}
