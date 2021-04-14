package exhibition.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import exhibition.model.Exhibition;
import exhibition.model.ExhibitionDao;

@Controller
public class ExhibitUserPlanController {
	
	@Autowired
	private ExhibitionDao edao;
	
	private final String command = "/exhibitPlan.ex";
	private final String gotoPage = "exhibitPlan";
	
	@RequestMapping(command)
	public String doAction(Model model) {
		
		List<Exhibition> list = edao.ListExhibition();
		model.addAttribute("list", list);
		
		return gotoPage;
	}
	
	
}
