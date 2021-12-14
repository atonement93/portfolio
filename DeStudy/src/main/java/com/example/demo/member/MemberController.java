package com.example.demo.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/member/**")
public class MemberController {
	
	//객체주입
	@Autowired
	private MemberService memberService;

	
	//로그인
	@GetMapping("login")
	public void getSelectOne() throws Exception{}
	
	@PostMapping("login")
	public String getSelectOne(MemberVO memberVO, HttpSession session) throws Exception{
		//System.out.println(memberVO);
		memberVO = memberService.getSelectOne(memberVO);
		//System.out.println(memberVO);
		if(memberVO != null) {
			session.setAttribute("member", memberVO);
		}
		return "redirect:../common/main";
	}
	
	
	//로그아웃
	@GetMapping("logout")
	public String logout(HttpSession session) throws Exception{
		session.invalidate();
		return "redirect:../common/main";
	}
	
	
	//회원가입
	@GetMapping("join")
	public void setInsert() throws Exception{};
	
	@PostMapping("join")
	public String setInsert(MemberVO memberVO) throws Exception{
		memberService.setInsert(memberVO);
//		System.out.println(result);
		return "redirect:../member/login";
	}
	
	
	//아이디 중복확인
	@ResponseBody
	@GetMapping("idCheck")
	public int overlappedID(MemberVO memberVO) throws Exception{
		int result = memberService.overlappedID(memberVO);
		//System.out.println(result);
		return result;
	}
}
