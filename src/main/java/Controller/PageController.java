package Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Dao.BoardDao;
import Dao.QABoardDao;

@Controller
public class PageController {
	@Autowired
	private BoardDao publicDao;
	@Autowired
	private QABoardDao qaDao;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home(Model model,HttpSession session) {
		String usernum =(String)session.getAttribute("usernum");
		
		List publicBoard = publicDao.getRecentList();
		List qaBoard = qaDao.getRecentList();
		model.addAttribute("publicBoard",publicBoard);
		model.addAttribute("qaBoard",qaBoard);
		model.addAttribute("bottom", "intro.jsp");
		model.addAttribute("usernum",usernum);
		
		return "main";
		
	}
	@RequestMapping(value = "/floor", method = RequestMethod.GET)
	public String floor(Model model,HttpServletRequest request) {
		model.addAttribute("bottom", "room.jsp");
		model.addAttribute("floor", request.getParameter("floor"));
		return "main";
	}
	@RequestMapping(value = "/skyLounge", method = RequestMethod.GET)
	public String skyLounge(Model model) {
		model.addAttribute("bottom", "skyLounge.jsp");
		return "main";
	}
	@RequestMapping(value = "/Restaurant", method = RequestMethod.GET)
	public String Restaurant(Model model) {
		model.addAttribute("bottom", "Restaurant.jsp");
		return "main";
	}
	@RequestMapping(value = "/where", method = RequestMethod.GET)
	public String where(Model model) {
		model.addAttribute("bottom", "where.jsp");
		return "main";
	}

}
