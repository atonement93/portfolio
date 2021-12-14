package com.example.demo.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentService {

	//객체 주입
	@Autowired
	private CommentRepository commentRepository;
	
	//댓글 목록 조회
	public List<CommentVO> getComment(int orinum) throws Exception{
		List<CommentVO> commentList = commentRepository.getComment(orinum);
		return commentList;
	};
}
