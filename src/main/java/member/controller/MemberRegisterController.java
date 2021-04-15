package member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cate.model.Cate;
import cate.model.CateDao;
import member.model.Member;
import member.model.MemberDao;

@Controller
public class MemberRegisterController {
	
	private final String command = "/registerForm.me";
	private final String getPage = "memberRegisterForm";
	private final String gotoPage = "redirect:/loginForm.me";
	
	@Autowired
	private MemberDao memberDao;

	@Autowired
	private CateDao cateDao;
	
	@RequestMapping(value = command, method = RequestMethod.GET)
	public String doAction(HttpServletRequest request) {
		List<Cate> clist = cateDao.ListCate();
		//System.out.println(clist);
		request.setAttribute("clist", clist);
		return getPage;
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST)
	public ModelAndView doAction(@Valid Member member, BindingResult result) {
		ModelAndView mav = new ModelAndView();
		if(result.hasErrors()) {
			mav.setViewName(getPage);
			return mav;
		}	
		int cnt = memberDao.insertMember(member);
		mav.setViewName(gotoPage);
		return mav;
	}
}
