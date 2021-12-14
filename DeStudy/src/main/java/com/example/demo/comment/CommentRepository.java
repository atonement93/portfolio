package com.example.demo.comment;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CommentRepository {

	//댓글 목록 조회
	public List<CommentVO> getComment(int orinum) throws Exception;
}
