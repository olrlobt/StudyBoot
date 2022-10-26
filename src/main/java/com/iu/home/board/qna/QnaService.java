package com.iu.home.board.qna;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.iu.home.util.FileManager;
import com.iu.home.util.Pager;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@Transactional(rollbackFor = Exception.class)
public class QnaService {

	@Autowired
	private FileManager fileManager;
	
	@Autowired
	private QnaMapper qnaMapper;
	
	@Value("${app.upload.qna}")
	private String path;
	
	public Long getCount() throws Exception{
		
		
		return qnaMapper.getCount();
	}
	
	public List<QnaVO> getList(Pager pager) throws Exception{
		
		
		pager.getRowNum();
		pager.getNum(getCount());
		
		
		
		return qnaMapper.getList(pager);
	}
	
	
	public int addList(QnaVO qnaVO)  throws Exception{
		
		
		
		int result = qnaMapper.addList(qnaVO);
		
		
		File file = new File(path);
		
		if(!file.exists()) {
			boolean check=file.mkdirs();
		}
		
		
		
		
		for(MultipartFile f: qnaVO.getFiles()) {
			
//			if(f.isEmpty()) {
//				throw new Exception();
//			}
			
			
			
			if(!f.isEmpty()) {
				
				String fileName=fileManager.saveFile(f, path);
				
				QnaFileVO qnaFileVO = new QnaFileVO();
				
				qnaFileVO.setFileName(fileName);
				qnaFileVO.setOriName(f.getOriginalFilename());
				qnaFileVO.setNum(qnaVO.getNum());
				
				qnaMapper.addFile(qnaFileVO);
				
				
			}
			
		}
		
		
		
		
		return result;
	}
	
	
	public QnaVO getDetail(QnaVO qnaVO) throws Exception{
		
		
		
		
		return qnaMapper.getDetail(qnaVO);
	}
	
	public QnaFileVO getFileDetail(QnaFileVO qnaFileVO) throws Exception{
		
		
		
		
		return qnaMapper.getFileDetail(qnaFileVO);
	}
}
