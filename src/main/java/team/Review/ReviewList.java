package team.Review;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import team.Action;
import team.Product.ProductVO;
import team.tms.TmsVO;

@Service("reviewlist")
public class ReviewList implements Action{

   @Resource
   ReviewMapper mapper;
   
   @Override
   public Object execute(HashMap<String,Object> map, HttpServletRequest req) {

      System.out.println("review/list execute()실행");
      ReviewVO vo =(ReviewVO)map.get("rvo");
      TmsVO tvo=(TmsVO)map.get("tvo");
      ProductVO pvo = (ProductVO)map.get("pvo");

      int nowPage = 1;
      int pageLimit = 10;
      int pageNumLimit = 4;

      if(req.getParameter("nowPage")!=null)
         nowPage = Integer.parseInt(req.getParameter("nowPage"));
      
      double tot = mapper.totalCnt();
      if(pvo.getP_code()!=null)
    	  tot = mapper.ptotalCnt(pvo.getP_code());

      int lastPage = (int)Math.ceil((double)tot/pageLimit);
      int start = (nowPage-1)*pageLimit+1;
      int end = nowPage*pageLimit;
      
      int startPage = (nowPage-1)/pageNumLimit*pageNumLimit+1;
      int endPage = startPage+pageNumLimit-1;
      
      if(endPage>lastPage)
         endPage = lastPage;
      req.setAttribute("startPage", startPage);
      req.setAttribute("endPage", endPage);
      req.setAttribute("start", start);
      req.setAttribute("nowPage", nowPage);
      req.setAttribute("lastPage", lastPage);
      
       HttpSession session = req.getSession();
       
       if((String) session.getAttribute("id")!=null) {
       String pid = (String) session.getAttribute("id");
       vo.setId(pid);       
       req.setAttribute("id",pid);
      
      List<TmsVO> ttt = mapper.list_tp(pid);
      System.out.println("ttt :"+ttt);
      
      
      int ch = 0;
      int rtest = 0;
      for (TmsVO tt : ttt) {
         String[] aaa = tt.t_pname.split("/");
         
         
         String ts = tt.t_status;
         System.out.println("tt.t_status : "+ts);
         
         
         for (String aa : aaa) {
            String[] bbb = aa.split(",");
            System.out.println(bbb[0]); //상품이름
            
            List<ProductVO> product = mapper.listName(bbb[0]);
            System.out.println(bbb[0]+" 의 상품코드:"+product.get(0).getP_code());
            if(vo.p_code==product.get(0).getP_code() && ts.equals("배송완료")) {
               if(mapper.Rtest(vo.p_code,vo.getId())==0) { //리뷰가 없을떄
                  rtest = 1;//리뷰없을떄 1로변함
               }
               ch=1;
            
            
            }
         }
      }
      req.setAttribute("ch", ch);
      req.setAttribute("rtest", rtest);

      
       }//구매햇을경우 글쓰기보이기안보이기
       
       
       
       int chk=1; //리뷰가 잇으면
       if(mapper.ptotalCnt(vo.p_code)==0){
          chk=0;//리뷰가없을떄
       }
       req.setAttribute("chk", chk);
  
      
      return mapper.list(vo.p_code,start,end); //상품번호가 리뷰에 연결될수있게 p code받아야함
   }

}
