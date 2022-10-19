package com.iu.home.util;

import lombok.Data;

@Data
public class Pager {

	private Long page; // 페이지
	private Long startNum; //첫번호
	private Long lastNum; // 끝번호
	
	private Long perPage; // 한 페이지에 몇개 글
	private Long perBlock; //한 블럭에 몇개 페이지
	
	
	private Long startRow;// 시작번호
	private Long lastRow; // 끝번호

	public Pager() {
		this.perPage = 10L;
		this.perBlock = 5L;
	}
	
	
	
	public void getRowNum() throws Exception{
		startRow = (getPage()-1)*getPerPage();
		lastRow = getPage()*getPerPage();
		
	}
	public void getNum(Long totalCount) throws Exception{
		
		Long totalPage = totalCount/getPerPage();
		if(totalCount%getPerPage() !=0 )totalPage++;
		
		Long totalBlock = totalPage/getPerBlock();
		if(totalPage%getPerBlock() !=0 )totalBlock++;
		
		Long curBlock = getPage()/getPerBlock();
		if(getPage()%getPerBlock() !=0 )curBlock++;
		
		this.startNum = (curBlock-1)*getPerBlock() +1;
		this.lastNum = curBlock*getPerBlock();
		
		
		
		
	}
	
	
	

	
	
	public Long getPage() {
		if(page==null || page<=0) {
			
			page =1L;
			
		}
		
		return page;
	}
	
	
	
}
