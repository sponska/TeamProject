package Controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import Vo.BoardVo;
import Vo.UserVo;
import Dao.BoardDao;
import Dao.UserDao;

@Controller
public class BoardController {
	@Autowired
	private BoardDao boardDao;
	@Autowired
	private UserDao userDao;

	@RequestMapping(value = "/boardList", method = RequestMethod.GET)
	public String boardList(Model model, HttpSession session,
			HttpServletRequest request) throws ParseException {
		if (session.getAttribute("userNum") == null) {
		} else {
			UserVo userVo = userDao.UserInfo((Integer) (session
					.getAttribute("userNum")));
			model.addAttribute("admincheck", userVo.getAdmin());
		}
		int page = 0;
		if (request.getParameter("page") == null) {
			page = 1;
		} else {
			page = new Integer(request.getParameter("page"));
		}

		int limit = 10;
		int start = (page - 1) * limit + 1;
		int end = start + limit - 1;
		int Count = boardDao.getRows();

		int pageCount = 0;

		if (Count > 0) {
			pageCount = (int) Count / limit;
			if (Count % limit != 0)
				pageCount++;
		}
		int startpage = (int) ((page - 1) / 10) * 10 + 1;
		int endpage = startpage + 10 - 1;
		if (endpage >= pageCount)
			endpage = pageCount;

		List ArticleList = boardDao.getArticleList(start, end);

		// List list = boardDao.boardList();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String time = sdf.format(new Date());
		model.addAttribute("time", time);
		model.addAttribute("current", page);
		model.addAttribute("start", startpage);
		model.addAttribute("end", endpage);
		model.addAttribute("list", ArticleList);
		model.addAttribute("bottom", "boardList.jsp");
		return "main";
	}

	@RequestMapping(value = "/boardListaction", method = RequestMethod.GET)
	public String boardListaction(Model model, HttpSession session,
			HttpServletRequest request) {

		int seq = new Integer(request.getParameter("seq"));
		boardDao.Hit(seq);
		BoardVo vo = boardDao.Boadetail(seq);
		BoardVo next = boardDao.Titlenext(seq);
		BoardVo prev = boardDao.Titleprev(seq);
		if (session.getAttribute("userNum") == null) {
		} else {
			UserVo userVo = userDao.UserInfo((Integer) (session
					.getAttribute("userNum")));
			model.addAttribute("admincheck", userVo.getAdmin());
		}

		model.addAttribute("vo", vo);
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);
		model.addAttribute("bottom", "boardDetail.jsp");

		return "main";
	}

	@RequestMapping(value = "/boardInsert", method = RequestMethod.GET)
	public String boardInsert(Model model) {

		model.addAttribute("bottom", "boardInsert.jsp");
		return "main";
	}

	@RequestMapping(value = "/boardInsertaction", method = RequestMethod.POST)
	public RedirectView boardInsertaction(Model model, BoardVo vo) {

		boardDao.boainse(vo);
		List list = boardDao.boardList();
		model.addAttribute("list", list);
		model.addAttribute("admincheck", "y");
		model.addAttribute("bottom", "boardList.jsp");
		return new RedirectView("boardList");
	}

	@RequestMapping(value = "/boaUpdate", method = RequestMethod.GET)
	public String boardUpdate(Model model, HttpSession session,
			HttpServletRequest request) {

		int seq = new Integer(request.getParameter("seq"));
		BoardVo vo = boardDao.Boadetail(seq);
		model.addAttribute("vo", vo);
		model.addAttribute("bottom", "boardUpdate.jsp");
		return "main";
	}

	@RequestMapping(value = "/boardUpdateaction", method = RequestMethod.GET)
	public RedirectView boardUpdateaction(Model model, BoardVo vo) {

		boardDao.boaUp(vo);

		BoardVo db = boardDao.Boadetail(vo.getBoanum());
		model.addAttribute("vo", db);
		model.addAttribute("bottom", "boardDetail.jsp");

		return new RedirectView("boardList");
	}

	@RequestMapping(value = "/boardDelete", method = RequestMethod.GET)
	public RedirectView boardDelete(Model model, HttpServletRequest request) {

		int seq = new Integer(request.getParameter("seq"));
		boardDao.boadel(seq);
		List list = boardDao.boardList();
		model.addAttribute("list", list);
		model.addAttribute("bottom", "boardList.jsp");
		return new RedirectView("boardList");
	}

	@RequestMapping(value = "/srch", method = RequestMethod.POST)
	public String srch(Model model, HttpServletRequest hsr) {
		String sch = "%" + hsr.getParameter("search") + "%";

		List list = boardDao.search(sch); // ����Ʈ�� �޾ƿ��� DAO
		model.addAttribute("list", list);
		model.addAttribute("bottom", "boardList.jsp");
		return "main";
	}
}
