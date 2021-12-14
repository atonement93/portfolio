package com.example.demo.comment;

import java.sql.Date;

public class CommentVO {
	
	private int orinum;
	private int num;
	private String writer;
	private String contents;
	private Date date;
	
	public int getOrinum() {
		return orinum;
	}
	public void setOrinum(int orinum) {
		this.orinum = orinum;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
}
