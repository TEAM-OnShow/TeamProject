package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import member.model.Member;
import member.model.MemberDao;

@Controller
public class MemberLoginController {
	
	private final String command = "/loginForm.me";
	private final String getPage = "memberLoginForm";
	
	@Autowired
	private MemberDao memberDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET) 
	public String doAction() {
		return getPage;
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST)
	public ModelAndView doAction( 
									HttpServletRequest request, 
									HttpServletResponse response,
									HttpSession session) throws IOException {
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		Member member = memberDao.getData(id);
		
		ModelAndView mav = new ModelAndView();
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html; charset=UTF-8");
		
		//아이디 없는 경우
		if(member == null) {
			System.out.println("존재하지 않는 회원");
			pw.print("<script type='text/javascript'>");
			pw.print("alert('해당 아이디가 존재하지 않습니다.')");
			pw.print("</script>");
			pw.flush();
			mav.setViewName(getPage);
		}
		//아이디 존재하는 경우
		else {
			if(password.equals(member.getPassword()) ) {// id, pw일치
				session.setAttribute("loginInfo", member);
				session.setAttribute("loginId", member.getId());
				if(session.getAttribute("loginId").equals("penguin")) {
					mav.setViewName("redirect:/main.jsp");
				} else {
					mav.setViewName("redirect:/user.jsp");
				}
			}	
			else {//비번 불일치
				pw.print("<script type='text/javascript'>");
				pw.print("alert('비번이 일치하지 않습니다.')");
				pw.print("</script>");
				pw.flush();
				mav.setViewName(getPage);
			}
		}
		return mav;
		
	}
}
