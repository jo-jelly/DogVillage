package team.notice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface NoticeMapper {
	
	List<NoticeVO> list(int start, int end);
	
	List<NoticeVO> listSch(NoticeVO vo);
	
	NoticeVO detail(int no);
	
	NoticeVO insertChk(String name);
	
	void insert(NoticeVO vo);

	void modify(NoticeVO vo);

	int totalCnt();
	
	void addCount(int no);
	
	int delete(int vo);
	
}
