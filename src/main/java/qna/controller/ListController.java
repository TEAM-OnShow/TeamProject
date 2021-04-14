package qna.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import notice.model.Notice;
import notice.model.NoticeDao;
import utility.Paging;

@Controller
public class ListController {
	
	@RequestMapping(value = "/list.qna")
	public ModelAndView doAction(
	/*
	 * @RequestParam(value = "pageNumber", required = false) String pageNumber,
	 * 
	 * @RequestParam(value = "pageSize", required = false) String pageSize,
	 * HttpServletRequest request
	 */) {
		//페이지설정
		/*
		 * int count = noticeDao.getTotalCount(); String url = request.getContextPath()
		 * + "/list.nt"; Paging pageInfo = new Paging(pageNumber, pageSize, count, url);
		 * 
		 * //리스트 가져오기 List<Notice> lists = noticeDao.getNoticeList(pageInfo);
		 * 
		 * //모델에 담아 넘기기 mav.addObject("lists", lists); mav.addObject("pageInfo",
		 * pageInfo);
		 */
		ModelAndView mav = new ModelAndView();
		mav.setViewName("list");
		return mav;
	}
}