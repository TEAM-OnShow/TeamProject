package member.controller;



import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
<<<<<<< HEAD
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
=======
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
>>>>>>> c5dcf89fce4a7ec74b779e75fc2460738fab6f46
import org.springframework.web.servlet.ModelAndView;

import member.model.Member;
import member.model.MemberDao;

@Controller
public class MemberUpdateController {
	private final String command = "/update.me";
	private final String getPage = "memberUpdateForm";
	private final String gotoPage = "redirect:/info.me";
	
	@Autowired
	private MemberDao memberDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
<<<<<<< HEAD
	public String doAction(@RequestParam(value="num")int num, Model model ) {
		model.addAttribute("num", num);
		System.out.println(num);
=======
	public String doAction() {
>>>>>>> c5dcf89fce4a7ec74b779e75fc2460738fab6f46
		return getPage;
	}
	
	@RequestMapping(value=command,method=RequestMethod.POST)
	public ModelAndView doAction(@Valid Member member, BindingResult result) {
		
		ModelAndView mav = new ModelAndView();
		if (result.hasErrors()) {
			mav.setViewName(getPage);
			return mav;
		}
		
		int cnt = memberDao.updateData(member);
		
		if(cnt==1) {
			mav.setViewName(gotoPage);

		}else {
			System.out.println("====================");
			System.out.println("업데이트 실패");
		}

		
		return mav;
		
	
	}
}