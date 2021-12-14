package com.example.demo.notice;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.member.MemberVO;
import com.example.demo.qna.QnaVO;
import com.example.demo.util.FileManager;
import com.example.demo.util.Pager;

@Service
public class NoticeService {
	
	@Autowired
	private NoticeRepository noticeRepository;
	
	@Autowired
	private FileManager fileManager;


	//글 목록 조회
	public List<NoticeVO> getList(Pager pager) throws Exception{
		pager.makeRow();
		
		Long totalCount = noticeRepository.getTotalCount(pager);
		pager.makeNum(totalCount);
		
		return noticeRepository.getList(pager);
		
//		List<NoticeVO> list = noticeRepository.getList(noticeVO);
//		return list;
	};
	
	//글 조회
	@Transactional(isolation = Isolation.READ_COMMITTED)
	public NoticeVO getSelect(NoticeVO noticeVO) throws Exception {
		noticeRepository.upHit(noticeVO);
		return noticeRepository.getSelect(noticeVO);
	}
	
	//글쓰기
	public int setInsert(NoticeVO noticeVO, MultipartFile [] files) throws Exception {
		int result = noticeRepository.setInsert(noticeVO);
		
		for(MultipartFile multipartFile:files) {
			if(multipartFile.getSize()==0L) {
				continue;
		}
		
		NoticeFileVO noticeFileVO = new NoticeFileVO();
		noticeFileVO.setNum(noticeVO.getNum());
		
		String fileName = fileManager.getUseServletContext("/upload/notice/", multipartFile);
		noticeFileVO.setFileName(fileName);
		noticeFileVO.setOriName(multipartFile.getOriginalFilename());
		result = noticeRepository.setFileInsert(noticeFileVO);
		}
		return result;
	}
	
	//글 수정하기
	public int setUpdate(NoticeVO noticeVO) throws Exception {
		return noticeRepository.setUpdate(noticeVO);
	}
	
	//글 삭제하기
	public int setDelete(NoticeVO noticeVO) throws Exception {
		return noticeRepository.setDelete(noticeVO);
	}
}
