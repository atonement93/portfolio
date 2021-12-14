package com.example.demo.util;

public class Pager {

	private String kind; //컬럼
	private String search; //검색어
	
	private Integer pageNum; //페이지번호
	private Integer perPage; //한 페이지당 글의 갯수
	private Integer startRow; 
	
	private Long startNum; //페이지 시작번호
	private Long lastNum; //페이지 끝번호
	
	private boolean lastCheck; //마지막 블럭 조사
	
	//---------------
	public void makeRow() {
		this.startRow = (this.getPageNum()-1)*this.getPerPage();
	}
	
	public void makeNum(Long totalCount) {
		//전체페이지 갯수 구하기
		Long totalPage = totalCount/this.getPerPage();
		if(totalCount%this.getPerPage() !=0) {
			totalPage++;
		}
		
		//총 페이징 갯수 구하기
		Long perBlock=5L;
		Long totalBlock = totalPage/perBlock;
		if(totalPage%perBlock != 0) {
			totalBlock++;
		}
		
		//pageNum으로 현재 블럭 번호 구하기
		Long curBlock = this.getPageNum()/perBlock;
		if(this.getPageNum()%perBlock != 0) {
			curBlock++;
		}
		
		//curBlock으로 시작번호, 끝번호 구하기
		startNum = (curBlock-1)*perBlock+1;
		lastNum = curBlock*perBlock;
		
		if(curBlock==totalBlock) {
			lastCheck=true;
			lastNum=totalPage;
		}
	}
	
	//-------------- setter, getter

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getSearch() {
		if(this.search==null) {
			this.search="";
		}
		return this.search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public Integer getPageNum() {
		if(this.pageNum==null || this.pageNum<1) {
			this.pageNum=1;
		}
		return pageNum;
	}

	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}

	public Integer getPerPage() {
		if(this.perPage==null || this.perPage<1) {
			this.perPage=10;
		}
		return perPage;
	}

	public void setPerPage(Integer perPage) {
		this.perPage = perPage;
	}

	public Integer getStartRow() {
		return startRow;
	}

	public void setStartRow(Integer startRow) {
		this.startRow = startRow;
	}

	public Long getStartNum() {
		return startNum;
	}

	public void setStartNum(Long startNum) {
		this.startNum = startNum;
	}

	public Long getLastNum() {
		return lastNum;
	}

	public void setLastNum(Long lastNum) {
		this.lastNum = lastNum;
	}

	public boolean isLastCheck() {
		return lastCheck;
	}

	public void setLastCheck(boolean lastCheck) {
		this.lastCheck = lastCheck;
	}
	
	
}
