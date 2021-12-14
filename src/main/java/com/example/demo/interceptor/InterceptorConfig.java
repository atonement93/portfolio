package com.example.demo.interceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer{
	
	@Autowired
	private NoticeInterceptor noticeInterceptor;
	
	@Autowired
	private QnaInterceptor qnaInterceptor;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		
		// 공지사항 게시판 - 관리자만 작성 가능
		registry.addInterceptor(noticeInterceptor)
				.addPathPatterns("/notice/*")
				.excludePathPatterns("/notice/list")
				.excludePathPatterns("/notice/select");
		
		// 모든 게시판 - 회원만 작성 가능
		registry.addInterceptor(qnaInterceptor)
				.addPathPatterns("/qna/*")
				.excludePathPatterns("/qna/list");
	}
}
