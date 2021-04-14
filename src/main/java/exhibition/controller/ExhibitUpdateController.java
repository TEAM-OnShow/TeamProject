package exhibition.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import cate.model.Cate;
import cate.model.CateDao;
import exhibition.model.Exhibition;
import exhibition.model.ExhibitionDao;

@Controller
public class ExhibitUpdateController {
	
	@Autowired
	private ExhibitionDao edao;
	
	@Autowired
	private CateDao cdao;
	
	@Autowired
	ServletContext servletContext;
	
	private final String command = "/exhibitUpdate.ex";
	private final String gotoPage = "exhibitUpdateForm";
	private final String viewPage = "redirect:/exhibitList.ex";
	
	@RequestMapping(value=command, method = RequestMethod.GET)
	public String doActionGET(@RequestParam(value="num")int num,
			@RequestParam(value="pageNumber")int pageNumber,
			Model model) {
		
		 List<Cate> list = cdao.ListCate(); 
		 model.addAttribute("list", list);
		 
		 Exhibition exhibition = edao.DetailExhibition(num);
		 model.addAttribute("pageNumber", pageNumber);
		 model.addAttribute("exhibition", exhibition);
		 
		return gotoPage;
	}
	
	@RequestMapping(value=command, method = RequestMethod.POST)
	public ModelAndView doActionPOST(@Valid Exhibition exhibition, BindingResult result,
			@RequestParam(value="pageNumber")int pageNumber) {
		
		String img = exhibition.getImg();
		String upload2 = exhibition.getUpload2();
		
		String uploadPath = servletContext.getRealPath("/resources");
		
		ModelAndView mav = new ModelAndView();
		
		if(result.hasErrors()) {
			System.out.println("유효성 검사 오류");
			List<Cate> list = cdao.ListCate(); 
			mav.addObject("pageNumber", pageNumber);
			mav.addObject("list", list);
			mav.setViewName(gotoPage);
			return mav;
			
		}else {
			int count = edao.UpdateExhibition(exhibition);
			if(count == 1) {
				File uploadFile = new File(uploadPath+"\\"+img); 
				File deleteFile = new File(uploadPath+"\\"+upload2); 
				
				deleteFile.delete();
				
				MultipartFile multi = exhibition.getUpload();
				try {
					multi.transferTo(uploadFile);
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			mav.addObject("pageNumber", pageNumber);	
			mav.setViewName(viewPage);
			return mav;
		} else {
			mav.addObject("pageNumber", pageNumber);
			mav.setViewName(gotoPage);
			return mav;
		}
	
		}
	}
}
