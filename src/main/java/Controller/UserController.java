package Controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import Vo.UserVo;
import Dao.BoardDao;
import Dao.QABoardDao;
import Dao.UserDao;

@Controller
public class UserController {
	@Autowired
	private UserDao userDao;
	@Autowired
	private BoardDao publicDao;
	@Autowired
	private QABoardDao qaDao;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Model model) {
		
		model.addAttribute("bottom", "register.jsp");
		return "main";
	}
	@RequestMapping(value = "/registerAction", method = RequestMethod.GET)
	public String registerAction(Model model,UserVo vo) {
		String userId=userDao.getUserId(vo.getUserId());
		if(vo.getUserId().equals(userId)) {
			model.addAttribute("bottom", "loginPage.jsp");
			model.addAttribute("event","regiFailed");
		} else {
			userDao.register(vo);
			model.addAttribute("bottom", "loginPage.jsp");
			model.addAttribute("event","regiComplete");
		}
		
		return "main";
	}
	@RequestMapping(value = "/myInfo", method = RequestMethod.GET)
	public String myInfo(Model model,HttpServletRequest request,HttpSession session) {
		int userNum = (Integer)session.getAttribute("userNum");
		UserVo vo =userDao.UserInfo(userNum);
		model.addAttribute("vo", vo);
		model.addAttribute("bottom", "myInfo.jsp");
		return "main";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Model model,UserVo vo,HttpSession session) {
		UserVo db = userDao.login(vo);
//		RedirectView rv=null;
//		rv.setUrl("loginPage");
		if(db==null) {
//			rv.addStaticAttribute("admin", "n");
//			rv.addStaticAttribute("event","loginFailed");
			model.addAttribute("admin", "n");
			model.addAttribute("event","loginFailed");
			model.addAttribute("bottom","loginPage.jsp");
		} else if(db.getUserOut().equals("y")) {
//			rv.addStaticAttribute("admin", "n");
//			rv.addStaticAttribute("event","deletedUser");
			model.addAttribute("event","deletedUser");
			model.addAttribute("admin", "n");
			model.addAttribute("bottom","loginPage.jsp");
		} else {
			session.setAttribute("userNum", db.getUserNum());
			session.setAttribute("admin", db.getAdmin());
			session.setMaxInactiveInterval(60*60);
			List publicBoard = publicDao.getRecentList();
			List qaBoard = qaDao.getRecentList();
			model.addAttribute("publicBoard",publicBoard);
			model.addAttribute("qaBoard",qaBoard);
			model.addAttribute("bottom","intro.jsp");
		}
		return "main";
	}
	@RequestMapping(value = "/loginPage", method = RequestMethod.GET)
	public String loginPage(Model model) {
		model.addAttribute("bottom","loginPage.jsp");
		return "main";
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public RedirectView logout(Model model,HttpSession session) {
		session.invalidate();
		return new RedirectView("main");
	}
	@RequestMapping(value = "/delUserPage", method = RequestMethod.GET)
	public String delUserPage(Model model,HttpServletRequest request) {
		model.addAttribute("userNum", request.getParameter("userNum"));
		model.addAttribute("bottom", "delUserPage.jsp");
		return "main";
	}
	@RequestMapping(value = "/delUser", method = RequestMethod.GET)
	public String delUser(Model model,HttpServletRequest request) {
		int userNum = new Integer(request.getParameter("userNum"));
		String userPwd = (String)(request.getParameter("userPwd"));
		UserVo db = userDao.UserInfo(userNum);
		if(userPwd.equals(db.getUserPwd())) {
			userDao.delUser(userNum);
			model.addAttribute("event", "delUserSuccess");
			model.addAttribute("bottom", "loginPage.jsp");
		} else {
			model.addAttribute("vo", db);
			model.addAttribute("bottom", "myInfo.jsp");
		}
		
		return "main";
	}
	@RequestMapping(value = "/userUpdate", method = RequestMethod.GET)
	public String userUpdate(Model model,UserVo vo,HttpSession session) {
		if(session.getAttribute("admin").equals("y")) {
			userDao.updateUserAdmin(vo);
			List list = userDao.getUserList();
			model.addAttribute("list", list);
			model.addAttribute("bottom", "userList.jsp");
		} else {
			UserVo db =userDao.UserInfo(vo.getUserNum());
			if(vo.getUserPwd().equals(db.getUserPwd())) {
				vo.setAdmin(db.getAdmin());
				userDao.updateUser(vo);
				UserVo result = userDao.UserInfo(vo.getUserNum());
				model.addAttribute("message", "updateSuccess");
				model.addAttribute("vo", result);
				model.addAttribute("bottom", "myInfo.jsp");
			} else {
				model.addAttribute("message", "updateFailed");
				model.addAttribute("vo", db);
				model.addAttribute("bottom", "myInfo.jsp");
			}
				
		}
		return "main";
	}
	@RequestMapping(value = "/userList", method = RequestMethod.GET)
	public String userList(Model model) {
		List list = userDao.getUserList();
		model.addAttribute("list", list);
		model.addAttribute("bottom", "userList.jsp");
		return "main";
	}
	@RequestMapping(value = "/findIdPage", method = RequestMethod.GET)
	public String findIdPage(Model model) {
		model.addAttribute("bottom", "findId.jsp");
		return "main";
	}
	@RequestMapping(value = "/findPwdPage", method = RequestMethod.GET)
	public String findPwdPage(Model model) {
		model.addAttribute("bottom", "findPwd.jsp");
		return "main";
	}
	
	@RequestMapping(value = "/findId", method = RequestMethod.GET)
	public String findId(Model model, UserVo vo) {
		UserVo db = userDao.find(vo);
		if(db!=null) {
			model.addAttribute("user", db.getUserId());
			model.addAttribute("event", "findSuccess");
			model.addAttribute("bottom", "loginPage.jsp");
		} else {
			model.addAttribute("event", "findFailed");
			model.addAttribute("bottom", "findId.jsp");
		}
		return "main";
	}
	@RequestMapping(value = "/findPwd", method = RequestMethod.GET)
	public String findPwd(Model model, UserVo vo) {
		UserVo db = userDao.find(vo);
		if(db!=null) {
			model.addAttribute("user", db.getUserPwd());
			model.addAttribute("event", "findSuccess");
			model.addAttribute("bottom", "loginPage.jsp");
		} else {
			model.addAttribute("event", "findFailed");
			model.addAttribute("bottom", "findPwd.jsp");
		}
		return "main";
	}
	
}
