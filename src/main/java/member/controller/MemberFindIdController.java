package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import member.model.Member;
import member.model.MemberDao;

@Controller
public class MemberFindIdController {
	
	private final String command = "/findId.me";
	private final String getPage = "findIdForm";
	private final String gotoPage = "redirect:/loginForm.me";
	
	@Autowired
	private MemberDao memberDao;
	
	@RequestMapping(value = command, method= RequestMethod.GET)
	public String doAction() {
		return getPage;
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST)
	public ModelAndView doAction(Member member, BindingResult result,
							HttpServletRequest request, 
							HttpServletResponse response,
							HttpSession session) throws IOException {
		
		ModelAndView mav = new ModelAndView();

		PrintWriter pw = response.getWriter();
		response.setContentType("text/html; charset=UTF-8");
		
		if(result.hasErrors()) {
			mav.setViewName(getPage);
			return mav;
		}
		
		Member findId = memberDao.findId(member);
		mav.addObject("findId",findId);
		
		System.out.println("���̵�~:" + findId.getId());

		if(findId.getId() == null) {
			System.out.println("���̵� �������� �ʽ��ϴ�.");
			pw.print("<script type='text/javascript'>");
			pw.print("alert('�ش� ���̵� �������� �ʽ��ϴ�.')");
			pw.print("</script>");
			pw.flush();
			mav.setViewName(getPage);
		} 
		else {
			pw.print("<script type='text/javascript'>");
			pw.print("alert('ȸ������ ���̵��'+ <%=findId.getId()%>+'�Դϴ�.')");
			pw.print("</script>");
			pw.flush();
			mav.setViewName(gotoPage);
		}
		
	
		return mav;
		
		
	}
}