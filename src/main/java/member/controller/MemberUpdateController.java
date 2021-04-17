package member.controller;



import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	public String doAction(@RequestParam(value="num")int num,Model model) {
		List<Cate> list = cdao.ListCate();
		model.addAttribute("list", list);
		return getPage;
	}
	
	@RequestMapping(value=command,method=RequestMethod.POST)
	public ModelAndView doAction(@Valid Member member, BindingResult result) {
		
		ModelAndView mav = new ModelAndView();
			if(result.hasErrors()) {
				System.out.println("유효성 검사 오류");
				mav.setViewName(getPage);
				return mav;
			}else {
				System.out.println("업데이트 됐나?");

				int cnt = memberDao.updateData(member);
				if(cnt==1) {
				System.out.println("업데이트 됐다");

				mav.setViewName(gotoPage);
				return mav;
			}else {
				System.out.println("====================");
				System.out.println("업데이트 실패");
			}
	}
		return mav;
	}
}