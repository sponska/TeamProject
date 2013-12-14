package Controller;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import Vo.QABoardVo;
import Vo.QAReplyVo;
import Vo.UserVo;
import Dao.QABoardDao;
import Dao.UserDao;

@Controller
public class QABoardController {
	@Autowired
	private static final QABoardVo vo = null;
	@Autowired
	private UserDao userdao;
	@Autowired
	private QABoardDao qaboarddao;

	@RequestMapping(value = "/QAinsert", method = RequestMethod.GET)
	public String QAinsert(Model model, HttpSession session) {
		if (session.getAttribute("userNum") == null) {
			model.addAttribute("bottom", "loginPage.jsp");
			model.addAttribute("event", "writeFailed");
		} else {
			int usernum = (Integer) (session.getAttribute("userNum"));

			UserVo vo = userdao.UserInfo(usernum);
			model.addAttribute("vo", vo);
			model.addAttribute("bottom", "QAinsert.jsp");
		}
		return "main";
	}

	
	@RequestMapping(value = "/QAlist", method = RequestMethod.GET)
	public String QAlist(Model model ,HttpServletRequest request) throws Exception {
				//여기서부터 페이지 불러오기
				int pageSize =5;  //페이지 글수
				String pageNum=request.getParameter("pageNum");     //페이지번호 불러오기
				
				if(pageNum == null)
					pageNum = "1";       				//처음 페이지를 1번 페이지로
				
				int currentPage = Integer.parseInt(pageNum);    //현재 페이지
				int startRow = (currentPage -1) * pageSize +1 ; //page에 첫번째 글
				int endRow =  pageSize*currentPage; 			//page에  마지막글
				int count =0;
				int number =0;
				
				count =qaboarddao.QAcountNo();
				//List list = qaboarddao.QAlist();
				
				int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1); 
					
				List list=	qaboarddao.QApagelist(startRow,endRow);
			
				if(count > 0){
					int startPage =(int)(currentPage /10)*10+1;   //pagelist 시작페이지
					int pageBlock =10;  						//1페이지수당 10개에 글을 보여준다
					int endPage = startPage+pageBlock +1;			//pagelist 마지막페이지
					if(endPage > pageCount)							
						endPage = pageCount;			
					
					model.addAttribute("startPage", startPage);
					model.addAttribute("endPage", endPage);
					model.addAttribute("count", count);
					model.addAttribute("number", number);
					model.addAttribute("pageNum", pageNum);
					model.addAttribute("currentPage", currentPage);
					model.addAttribute("list", list);
					model.addAttribute("bottom", "QAlist.jsp");
				}
				number = count - (currentPage - 1) * pageSize;
		return "main";
	}

	@RequestMapping(value = "/QAlistAction", method = RequestMethod.GET)
	public String QAlistAction(Model model,HttpSession session,HttpServletRequest request)  {
		int seq = new Integer (request.getParameter("QAseq"));
		qaboarddao.qahit(seq);
		
		
		if(session.getAttribute("userNum")==null) {
			model.addAttribute("bottom", "loginPage.jsp");
			model.addAttribute("event", "writeFailed");
		} else {
			int userNum=(Integer) session.getAttribute("userNum");	//세션에서 로그인된 유저의 유저넘버를 받아옴
			UserVo userVo=userdao.UserInfo(userNum); 		//그번호를 파라미터로 유저정보를 가져옴
			

			int QAseq = Integer.parseInt(request.getParameter("QAseq"));//글번호 가져오기
			
			List clist = qaboarddao.QAcommentlist(QAseq);		//글번호로 댓글리스트가져오기
			QABoardVo vo = qaboarddao.QABoarddetail(QAseq);		//글번호로 글가져오기
			
			
			
			model.addAttribute("userNum",userNum);
			model.addAttribute("loginUserName",userVo.getUserName());
			model.addAttribute("clist", clist);
			model.addAttribute("qavo", vo);
			model.addAttribute("bottom", "QABoardDetail.jsp");
		}
		
		
		return "main";
	}

	
	@RequestMapping(value = "QACommentInsert", method = RequestMethod.GET)
	public RedirectView QACommentInsert(Model model,QAReplyVo qr,HttpSession session,HttpServletRequest hrs) {
		int userNum= (Integer) session.getAttribute("userNum");
		UserVo userVo=userdao.UserInfo(userNum);
		qr.setUserName(userVo.getUserName());
		qr.setUserNum(userNum);
		qaboarddao.QACommentInsert(qr);
		return new RedirectView("QAlistAction?QAseq="+qr.getQABoaNum());
	}
	
	@RequestMapping(value = "/QAinsertAction", method = RequestMethod.POST)
	public RedirectView QAinsertAction(Model model, QABoardVo vo, HttpSession hs) {

		int userNum = (Integer) hs.getAttribute("userNum");
		Timestamp tm = new Timestamp(System.currentTimeMillis());
		vo.setQAboaDate(tm);
		vo.setUserNum(userNum);
		qaboarddao.QAinsert(vo);
		return new RedirectView("QAlist");

	}

	@RequestMapping(value = "/QABoardDelete", method = RequestMethod.GET)
	public String QABoardDelete(Model model, HttpServletRequest hsr) {
		int QAseq = Integer.parseInt(hsr.getParameter("QAseq"));
		QABoardVo vo = qaboarddao.QABoarddetail(QAseq);				//디테일 부분 가져오기
		model.addAttribute("qavo", vo);
		return "QABoardDelete";
	}
	
	@RequestMapping(value = "/QABoardDeleteAction", method = RequestMethod.GET)
	public String QABoardDeleteAction(Model model, HttpServletRequest hsr) {
	
		int QAseq = Integer.parseInt(hsr.getParameter("QAseq"));
	    qaboarddao.QAdelete(QAseq);
	    
	    List list = qaboarddao.QAlist();	//리스트를 받아오는DAO
		model.addAttribute("list", list);	//받아온 리스트를  지정
		model.addAttribute("bottom", "QAlist.jsp");
		return "main";
	}
	
	@RequestMapping(value = "/QAcommentDel", method = RequestMethod.GET)
	public RedirectView QAcommentDel(Model model, HttpServletRequest request) {
		
		int Commentseq =Integer.parseInt(request.getParameter("Commentseq"));
		int QAseq = Integer.parseInt(request.getParameter("QAseq"));
		qaboarddao.QACommentDel(Commentseq);
		model.addAttribute("bottom", "QAlist.jsp");
		return new RedirectView("QAlistAction?QAseq="+QAseq);
	}
	
	
	@RequestMapping(value = "/QABoardUpdateAction", method = RequestMethod.POST)
	public String QABoardUpdateAction(Model model, HttpServletRequest hsr, QABoardVo vo) {
		qaboarddao.QAupdate(vo);
		QABoardVo db = qaboarddao.QABoarddetail(vo.getQAboaNum());
		model.addAttribute("qavo", db);
		model.addAttribute("bottom", "QABoardDetail.jsp");
		return "main";
	}
	
	@RequestMapping(value = "/QABoardUpdate", method = RequestMethod.GET)
	public String QABoardUpdate(Model model,HttpServletRequest hsr) {
		int QAseq = Integer.parseInt(hsr.getParameter("QAseq"));  //디테일 부분 가져오기 
		QABoardVo vo = qaboarddao.QABoarddetail(QAseq);				//디테일 부분 가져오기
		model.addAttribute("qavo", vo);								//디테일 부분 가져오기
		model.addAttribute("bottom", "QABoardUpdate.jsp");
		return "main";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String search(Model model, HttpServletRequest hsr) {
		String sch="%"+hsr.getParameter("search")+"%";
	
	    List list = qaboarddao.search(sch);	//리스트를 받아오는DAO
		model.addAttribute("list", list);	//받아온 리스트를  지정
		model.addAttribute("bottom", "QAlist.jsp");
		return "main";
	}
	

}