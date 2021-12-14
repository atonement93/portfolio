package com.example.demo.qna;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.member.MemberVO;
import com.example.demo.util.Pager;

@Controller
@RequestMapping("/qna/**")
public class QnaController {
	
		//객체주입
		@Autowired
		private QnaService qnaService;
		
		//글 목록 조회 + 페이징
		@GetMapping("list")
		public ModelAndView getList(Pager pager, ModelAndView mv, QnaVO qnaVO) throws Exception{
			List<QnaVO> ar = qnaService.getList(pager);
			mv.addObject("qnaList", ar);
			mv.addObject("pager", pager);
			mv.setViewName("qna/list");
			return mv;
		}
		
		//글 조회
		@GetMapping("select")
		public ModelAndView getSelect(ModelAndView mv, QnaVO qnaVO) throws Exception{
			qnaVO = qnaService.getSelect(qnaVO);
			mv.setViewName("qna/select");
			mv.addObject("qnaVO", qnaVO);
			return mv;
		}
		
		//글쓰기
		@GetMapping("insert")
		public String setInsert(@ModelAttribute QnaVO qnaVO) throws Exception {
			return "qna/insert";
		}
		
		@PostMapping("insert")
		public String setInsert(QnaVO qnaVO, BindingResult bindingResult, HttpSession session) throws Exception{
			MemberVO memberVO = (MemberVO)session.getAttribute("member");
			qnaVO.setWriter(memberVO.getId());
			int result = qnaService.setInsert(qnaVO);
			return "redirect:../qna/list";
		}
		
		//글 수정하기
		@GetMapping("update")
		public String setUpdate(QnaVO qnaVO, Model model) throws Exception {
			qnaVO = qnaService.getSelect(qnaVO);
			model.addAttribute("qnaVO", qnaVO);
			return "qna/update";
		}
		
		@PostMapping("update")
		public String setUpdate(QnaVO qnaVO) throws Exception {
			int result = qnaService.setUpdate(qnaVO);
			return "redirect:./select?num="+qnaVO.getNum();
		}
		
		//글 삭제하기
		@GetMapping("delete")
		public String setDelete(QnaVO qnaVO) throws Exception {
			int result = qnaService.setDelete(qnaVO);
			return "redirect:../qna/list";
		}
		
		//답글
		@GetMapping("reply")
		public String reply(@ModelAttribute QnaVO qnaVO) throws Exception {
			return "qna/reply";
		}
		
		@PostMapping("reply")
		public String reply(QnaVO qnaVO, BindingResult bindingResult, HttpSession session) throws Exception {
			MemberVO memberVO = (MemberVO)session.getAttribute("member");
			qnaVO.setWriter(memberVO.getId());
			int result = qnaService.setReplyInsert(qnaVO);
			return "redirect:../qna/list";
		}
}
