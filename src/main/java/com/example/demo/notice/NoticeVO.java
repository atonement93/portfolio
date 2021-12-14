package com.example.demo.notice;

import java.sql.Date;
import java.util.List;

public class NoticeVO {
	private int num;
	private String title;
	private String contents;
	private String writer;
	private int hit;
	private Date date;
	
	private List<NoticeFileVO> fileList;

	public List<NoticeFileVO> getFileList() {
		return fileList;
	}
	public void setFileList(List<NoticeFileVO> fileList) {
		this.fileList = fileList;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	

}
