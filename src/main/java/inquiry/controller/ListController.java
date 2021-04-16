package inquiry.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import inquiry.model.Inquiry;
import inquiry.model.InquiryDao;
import utility.Paging;

@Controller
public class ListController {
	
	@Autowired
	InquiryDao inqDao;
	
	@RequestMapping(value = "/list.inq")
	public String doAction(
							@RequestParam(value = "whatColumn", required = false) String whatColumn, 
							@RequestParam(value="keyword",required = false)String keyword,
							@RequestParam(value="pageNumber",required = false)String pageNumber,
							Model model, HttpServletRequest request) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("whatColumn", whatColumn);
		map.put("keyword", "%"+keyword+"%");
		
		int totalCount = inqDao.totalCount(map);
		String url = request.getContextPath()+"/list.inq";
		Paging pageInfo = new Paging(pageNumber, "10", totalCount, url, whatColumn, keyword);

		List<Inquiry> lists = inqDao.getInquiryList(map,pageInfo);
		model.addAttribute("lists", lists);
		model.addAttribute("pageInfo", pageInfo);

		return "list";
	}
	
	
}
