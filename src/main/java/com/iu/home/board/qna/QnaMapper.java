package com.iu.home.board.qna;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.iu.home.util.Pager;


//@Repository
@Mapper
public interface QnaMapper {

	public List<QnaVO> getList(Pager pager) throws Exception;
	public int addList(QnaVO qnaVO) throws Exception;
	public Long getCount() throws Exception;
	public int addFile(QnaFileVO qnaFileVO) throws Exception;
	public QnaVO getDetail(QnaVO qnaVO) throws Exception;
	public QnaFileVO getFileDetail(QnaFileVO qnaFileVO) throws Exception;
}
