package member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberInfoController {
	private final String command = "/info.me";
	private final String getPage = "memberInfo";

	
	@RequestMapping(command)
	public String doAction(HttpSession session) {
		if(session.getAttribute("loginInfo") == null) {
			session.setAttribute("destination", "redirect:"+command);
			return "redirect:/loginForm.me";
		} else {
			return getPage;
		}
	}
}
