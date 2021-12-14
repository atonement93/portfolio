package com.example.demo.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

	@Autowired
	private MemberRepository memberRepository;
	
	//로그인
	public MemberVO getSelectOne(MemberVO memberVO) throws Exception{
		return memberRepository.getSelectOne(memberVO);
	}
	
	//회원가입
	public int setInsert(MemberVO memberVO) throws Exception{
		int result = memberRepository.setInsert(memberVO);
		return result;
	}
	
	//아이디 중복확인
	public int overlappedID(MemberVO memberVO) throws Exception{
		int result = memberRepository.overlappedID(memberVO);
		return result;
	}
}
