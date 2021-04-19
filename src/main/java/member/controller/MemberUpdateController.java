package member.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpSession;

import cate.model.Cate;
import cate.model.CateDao;
import exhibition.model.ExhibitionDao;
import member.model.Member;
import member.model.MemberDao;

@Controller
public class MemberUpdateController {
	private final String command = "/update.me";
	private final String getPage = "memberUpdateForm";
	private final String gotoPage = "redirect:/info.me";
	
	@Autowired
	private CateDao cdao;

	
	@Autowired
	private MemberDao memberDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doAction(@RequestParam(value="num")int num, HttpSession session, Model model) {
		
		List<Cate> list = cdao.ListCate();
		Member member = memberDao.getData((String)session.getAttribute("loginId"));
		model.addAttribute("member", member);
		model.addAttribute("list", list);
		
//		Member member = MemberDao.getDataByNum(num);
//		model.addAttribute("member",member);
		return getPage;
	} 
	
	@RequestMapping(value=command,method=RequestMethod.POST)
	public ModelAndView doAction(@ModelAttribute("member") @Valid Member member, BindingResult result) {
		
		ModelAndView mav = new ModelAndView();
		System.out.println("num:"+member.getYear());
		
		List<Cate> list = cdao.ListCate();
		
		if(result.hasErrors()) {
			System.out.println("유효성 검사 오류");
			mav.addObject("list", list);
			mav.setViewName(getPage);
			return mav;
		}else {
			System.out.println("업데이트 됐나?");

			int cnt = memberDao.updateData(member);
			
			if(cnt==1) {
			System.out.println("업데이트 됐다");

			mav.setViewName(gotoPage);
			return mav;
			}
			
			return mav;
		}
	}
}