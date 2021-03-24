package team.Review;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import team.Product.ProductVO;
import team.storage.StorageVO;
import team.tms.TmsVO;

@Mapper
public interface ReviewMapper {
   
   List<ReviewVO> list(int p_code,int start, int end);
   //List<ProductVO> listSch(ProductVO vo); 검색
   List<ReviewVO> imgList(ReviewVO vo);
   
   List<ProductVO> listName(String name);
   ReviewVO detail(int no); //디테일
   
   void insert(ReviewVO vo); //
   void insertfirst(ReviewVO vo);// 리뷰에 아무것도없을떄 첫번째로가는거
   void modify(ReviewVO vo);
   int delete(ReviewVO vo); //
   int totalCnt(); // 총갯수
   int ptotalCnt(int p_code); // 그 상품의 리뷰 총갯수
   void fileModify(ReviewVO vo);
   List<TmsVO>list_tp(String pid); //tms에 있는 id와 
   
   int Rtest(int p_code,String id);//리뷰 상품 1개당 리뷰 1개 중복검사

   void cnt(int no);//리뷰 조회수
   
   
   
}

