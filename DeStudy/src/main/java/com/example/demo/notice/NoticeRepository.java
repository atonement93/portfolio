package com.example.demo.notice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.member.MemberVO;
import com.example.demo.qna.QnaVO;
import com.example.demo.util.Pager;

@Mapper
public interface NoticeRepository{
	
	//글 목록 조회
	public List<NoticeVO> getList(Pager pager) throws Exception;

	//전체 글의 갯수
	public Long getTotalCount(Pager pager) throws Exception;
	
	//글 조회
	public NoticeVO getSelect(NoticeVO noticeVO) throws Exception;
	public int upHit(NoticeVO noticeVO) throws Exception;
	
	//글쓰기
	public int setInsert(NoticeVO noticeVO) throws Exception;
	
	//글 수정하기
	public int setUpdate(NoticeVO noticeVO) throws Exception;
	
	//글 삭제하기
	public int setDelete(NoticeVO noticeVO) throws Exception;
	
	//파일저장
	public int setFileInsert(NoticeFileVO noticeFileVO) throws Exception;
}
