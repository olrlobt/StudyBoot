package com.iu.home.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.AbstractView;

import com.iu.home.board.qna.QnaFileVO;

import lombok.extern.slf4j.Slf4j;

@Component
@Slf4j
public class FileManager extends AbstractView {

	@Value("${app.download.base}")
	private String base;
	
	// 다운 걸어주는 매쏘드
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		
		QnaFileVO fileVO = (QnaFileVO) model.get("fileVO");
		String path = (String) model.get("path");
		log.info("=======================================");
		log.info("FIle VO {}",fileVO );
		
		File file = new File(base+path,fileVO.getFileName());
		// 인코딩   // 파일 크기 설정
		response.setCharacterEncoding("UTF-8");
		response.setContentLengthLong(file.length());
		//다운로드시 파일 이름을 인코딩
		String oriName = URLEncoder.encode(fileVO.getOriName(),"UTF-8");
		// header 설정
		response.setHeader("Content-Disposition", "attachment;filename=\""+oriName+"\"");
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		//HDD에서 파일을 읽고
		FileInputStream fi = new FileInputStream(file);
		//Client 로 전송 준비
		OutputStream os = response.getOutputStream();
		
		//전송
		FileCopyUtils.copy(fi, os);
		
		// 자원 해제
		os.close();
		fi.close();
		
	}

	public String saveFile(MultipartFile multipartFile,String path) throws IOException {
		
		
		String fileName = UUID.randomUUID().toString();
		
		StringBuffer bf = new StringBuffer();
		bf.append(fileName);
		bf.append("_");
		bf.append(multipartFile.getOriginalFilename());
		
		log.info("Filenane = {}",bf.toString());
		
		File file = new File(path,bf.toString());
		FileCopyUtils.copy(multipartFile.getBytes(), file);
		multipartFile.transferTo(file);
		
		
		return bf.toString();
	}
	
	
	
}
