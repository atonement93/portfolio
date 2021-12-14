package com.example.demo.notice;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.comment.CommentService;
import com.example.demo.comment.CommentVO;
import com.example.demo.member.MemberVO;
import com.example.demo.qna.QnaVO;
import com.example.demo.util.Pager;

@Controller
@RequestMapping("/notice/**")
public class NoticeController {
	
	//객체주입
	@Autowired
	private NoticeService noticeService;
	
	@Autowired
	private CommentService commentService;
	
	//글 목록 조회 + 페이징
	@GetMapping("list")
	public ModelAndView getList(Pager pager, ModelAndView mv, NoticeVO noticeVO) throws Exception{
		List<NoticeVO> ar = noticeService.getList(pager);
		mv.addObject("noticeList", ar);
		mv.addObject("pager", pager);
		mv.setViewName("notice/list");
		return mv;
//		List<NoticeVO> list = noticeService.getList(noticeVO);
//		mv.addObject("noticeList", list);
	}
	
	//글 조회
	@GetMapping("select")
	public ModelAndView getSelect(ModelAndView mv, NoticeVO noticeVO) throws Exception{
		noticeVO = noticeService.getSelect(noticeVO);
		mv.setViewName("notice/select");
		mv.addObject("noticeVO", noticeVO);
		
		//댓글 목록 조회
		List<CommentVO> commentList = commentService.getComment(noticeVO.getNum());
		mv.addObject("commentList", commentList);
		
		return mv;
	}
	
	//글쓰기
	@GetMapping("insert")
	public String setInsert(@ModelAttribute NoticeVO noticeVO) throws Exception {
		return "notice/insert";
	}
	
	@PostMapping("insert")
	public String setInsert(NoticeVO noticeVO, MultipartFile [] files, HttpSession session) throws Exception{
		//System.out.println(files.length);
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		noticeVO.setWriter(memberVO.getId());
		int result = noticeService.setInsert(noticeVO, files);
		return "redirect:../notice/list";
	}
	
	//글 수정하기
	@GetMapping("update")
	public String setUpdate(NoticeVO noticeVO, Model model) throws Exception {
		noticeVO = noticeService.getSelect(noticeVO);
		model.addAttribute("noticeVO", noticeVO);
		return "notice/update";
	}
	
	@PostMapping("update")
	public String setUpdate(NoticeVO noticeVO) throws Exception {
		int result = noticeService.setUpdate(noticeVO);
		return "redirect:./select?num="+noticeVO.getNum();
	}
	
	//글 삭제하기
	@GetMapping("delete")
	public String setDelete(NoticeVO noticeVO) throws Exception {
		int result = noticeService.setDelete(noticeVO);
		return "redirect:../notice/list";
	}
}
