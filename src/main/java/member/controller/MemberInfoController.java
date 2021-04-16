package member.controller;

<<<<<<< HEAD
import java.io.IOException;
import java.lang.reflect.Member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import member.model.MemberDao;
=======
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
>>>>>>> c5dcf89fce4a7ec74b779e75fc2460738fab6f46

@Controller
public class MemberInfoController {
	private final String command = "/info.me";
	private final String getPage = "memberInfo";

	
	@RequestMapping(command)
<<<<<<< HEAD
	public String doAction() {
		return getPage;
		
=======
	public String doAction(HttpSession session) {
		if(session.getAttribute("loginInfo") == null) {
			session.setAttribute("destination", "redirect:"+command);
			return "redirect:/loginForm.me";
		} else {
			return getPage;
		}
>>>>>>> c5dcf89fce4a7ec74b779e75fc2460738fab6f46
	}
}
