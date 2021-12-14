package com.example.demo.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.example.demo.member.MemberVO;

@Component
public class QnaInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO memberVO = (MemberVO)session.getAttribute("member");

		//로그인 안됨
		if(memberVO == null) {
			request.setAttribute("message", "등록된 회원이 아닙니다.");
			request.setAttribute("path", "/member/login");
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/memberAccess.jsp");
			view.forward(request, response);
			return false;
		//로그인 되어있음
		}else {
			return true;
		}
	}
}
