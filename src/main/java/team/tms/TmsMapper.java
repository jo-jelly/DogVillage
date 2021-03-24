package team.tms;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import team.Product.ProductVO;
import team.adjustment.AdjustmentVO;
import team.storage.StorageVO;


@Mapper
public interface TmsMapper {

	List<TmsVO> newList();
	
	List<TmsVO> list(int start, int end);
	
	List<TmsVO> listmy(String pid);
	
	List<ProductVO> listStorage(StorageVO vo);
	
	List<TmsVO> deliList();
	
	void invoice(TmsVO vo);
	
	void tmsDC(TmsVO vo);
	
	void adjInsert(AdjustmentVO vo);
	
	TmsVO detail(int no);
	
	TmsVO listSch(TmsVO vo);
	
	int totalCnt();
	
	void modify(TmsVO vo);
	
	TmsVO delete(int vo);
}
