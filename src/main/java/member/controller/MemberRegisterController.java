package member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
<<<<<<< HEAD
import org.springframework.ui.Model;
=======
>>>>>>> e05b927dcf2cacd49c0f8c429d1646d8597a56d3
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
<<<<<<< HEAD
	private CateDao cdao;
	
	@Autowired
=======
>>>>>>> e05b927dcf2cacd49c0f8c429d1646d8597a56d3
	private MemberDao memberDao;

	@Autowired
	private CateDao cateDao;
	
	@RequestMapping(value = command, method = RequestMethod.GET)
<<<<<<< HEAD
	public String doAction(Model model, HttpSession session) {
		List<Cate> list = cdao.ListCate();
		model.addAttribute("list", list);
=======
	public String doAction(HttpSession session) {
		List<Cate> clist = cateDao.ListCate();
		//System.out.println(clist);
		session.setAttribute("clist", clist);
>>>>>>> e05b927dcf2cacd49c0f8c429d1646d8597a56d3
		return getPage;
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST)
	public ModelAndView doAction(@Valid Member member, BindingResult result, HttpSession session) {
<<<<<<< HEAD
		System.out.println("register");
		ModelAndView mav = new ModelAndView();
		if(result.hasErrors()) {
			List<Cate> list = cateDao.ListCate();
			session.setAttribute("list", list);
=======
		ModelAndView mav = new ModelAndView();
		if(result.hasErrors()) {
			List<Cate> clist = cateDao.ListCate();
			session.setAttribute("clist", clist);
>>>>>>> e05b927dcf2cacd49c0f8c429d1646d8597a56d3
			mav.setViewName(getPage);
			return mav;
		}
		System.out.println("member => "+member.getCat());
		int cnt = memberDao.insertMember(member);
		mav.setViewName(gotoPage);
		return mav;
	}
}
