package team.storage;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface StorageMapper {
	
	List<StorageVO> list(int start, int end);
	
	List<StorageVO> listSch(StorageVO vo);
	
	List<StorageVO> imgList(StorageVO vo);
	
	List<StorageIOVO> iList();
	
	List<StorageIOVO> ioList(int start, int end);
	
	List<StorageIOVO> ioListSch(StorageIOVO vo);
	
	StorageVO detail(int no);
	
	StorageVO insertChk(String name);
	
	void insert(StorageVO vo);
	
	void ioInsert(StorageIOVO vo);
	
	void modify(StorageVO vo);
	
	void fileModify0(StorageVO vo);
	
	void fileModify1(StorageVO vo);
	
	void fileModify2(StorageVO vo);
	
	void ioModify(StorageVO vo);
	
	int totalCnt();
	
	int totalIOCnt();
	
	int delete(int vo);
	
}
