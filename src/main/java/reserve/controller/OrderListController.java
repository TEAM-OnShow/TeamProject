package reserve.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import member.model.Member;
import order.model.Order;
import order.model.OrderDao;

@Controller
public class OrderListController {

	private final String command = "/order.re";
	private final String getPage = "orderList";
	
	@Autowired
	OrderDao orderDao;
	
	@RequestMapping(command)
	public String doAction(
				HttpSession session
			) {
		Member loginInfo = (Member) session.getAttribute("loginInfo");
		if(loginInfo == null) {
			session.setAttribute("destination", "redirect:"+command);
			return "redirect:/loginForm.me";
		} else {
			List<Order> lists = new ArrayList<Order>();
			String mid = loginInfo.getId();
			//System.out.println("로그인 회원아이디 => "+mid);
			Map<String, String> map = new HashMap<String, String>();
			map.put("mid", mid);
			lists = orderDao.getAllData(map);
			System.out.println(lists.size());
			session.setAttribute("lists", lists);
			return getPage;
		}
	}
}
