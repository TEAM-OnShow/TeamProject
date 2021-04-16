package member.controller;

import java.io.IOException;
import java.lang.reflect.Member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import member.model.MemberDao;

@Controller
public class MemberInfoController {
	private final String command = "/info.me";
	private final String getPage = "memberInfo";

	
	@RequestMapping(command)
	public String doAction() {
		return getPage;
		
	}
}
