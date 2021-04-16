package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

<<<<<<< HEAD
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
=======
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
>>>>>>> c5dcf89fce4a7ec74b779e75fc2460738fab6f46
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import member.model.Member;
import member.model.MemberDao;

@Controller
public class MemberFindPwController {
	
	private final String command = "/findPw.me";
	private final String getPage = "findPwForm";
<<<<<<< HEAD
	private final String gotoPage = "redirect:/loginForm.me";
=======
	private final String gotoPage = "memberLoginForm";
>>>>>>> c5dcf89fce4a7ec74b779e75fc2460738fab6f46
			
	@Autowired
	private MemberDao memberDao;
	
	@RequestMapping(value = command, method=RequestMethod.GET)
	public String doAction() {
		return getPage;
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST)
<<<<<<< HEAD
	public ModelAndView doAction(Member member, BindingResult result,
				HttpServletRequest request, HttpServletResponse response) throws IOException{
=======
	public ModelAndView doAction(Member member, HttpServletResponse response) throws IOException{
>>>>>>> c5dcf89fce4a7ec74b779e75fc2460738fab6f46
		ModelAndView mav = new ModelAndView();
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html; charset=UTF-8");
<<<<<<< HEAD
        
        
		if(result.hasErrors()) {
			mav.setViewName(getPage);
			System.out.println("����");
			return mav;
			
		}
		
		Member findPw = memberDao.findPw(member);
		mav.addObject("findPw", findPw);
//		System.out.println("���:"+ findPw);

		System.out.println("���~:"+ findPw.getPassword());
//		out.println("<script>alert('ȸ������ ��й�ȣ��'+ <%=findPw.getPassword()%>+'�Դϴ�.');</script>");
		
		if(findPw.getPassword() == null) {
=======
		
		Member findPw = memberDao.findPw(member);
//		System.out.println("���:"+ findPw);
//		out.println("<script>alert('ȸ������ ��й�ȣ��'+ <%=findPw.getPassword()%>+'�Դϴ�.');</script>");
		
		if(findPw == null) {
>>>>>>> c5dcf89fce4a7ec74b779e75fc2460738fab6f46
			System.out.println("��й�ȣ�� �������� �ʽ��ϴ�.");
			pw.print("<script type='text/javascript'>");
			pw.print("alert('��й�ȣ�� �������� �ʽ��ϴ�.')");
			pw.print("</script>");
			pw.flush();
			mav.setViewName(getPage);
		} 
		else {
<<<<<<< HEAD
			pw.print("<script type='text/javascript'>");
			pw.print("alert('ȸ������ ��й�ȣ��'+ <%=findPw.getPassword()%>+'�Դϴ�.')");
=======
			System.out.println("���:"+ findPw.getPassword());
			String msg = "ȸ�� ��й�ȣ�� "+findPw.getPassword()+"�Դϴ�.";
			pw.print("<script type='text/javascript'>");
			pw.print("alert('"+msg+"')");
>>>>>>> c5dcf89fce4a7ec74b779e75fc2460738fab6f46
			pw.print("</script>");
			pw.flush();
			mav.setViewName(gotoPage);
		}
		
<<<<<<< HEAD
		
		
=======
>>>>>>> c5dcf89fce4a7ec74b779e75fc2460738fab6f46
		return mav;
		
	}
		
	
}