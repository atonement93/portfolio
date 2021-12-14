package com.example.demo.member;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
public interface MemberRepository {
	
	//로그인
	public MemberVO getSelectOne(MemberVO memberVO)throws Exception;

	//회원가입
	public int setInsert(MemberVO memberVO) throws Exception;
	
	//아이디 중복확인
	public int overlappedID(MemberVO memberVO) throws Exception;
}
