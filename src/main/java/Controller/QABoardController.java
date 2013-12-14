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
				//���⼭���� ������ �ҷ�����
				int pageSize =5;  //������ �ۼ�
				String pageNum=request.getParameter("pageNum");     //��������ȣ �ҷ�����
				
				if(pageNum == null)
					pageNum = "1";       				//ó�� �������� 1�� ��������
				
				int currentPage = Integer.parseInt(pageNum);    //���� ������
				int startRow = (currentPage -1) * pageSize +1 ; //page�� ù��° ��
				int endRow =  pageSize*currentPage; 			//page��  ��������
				int count =0;
				int number =0;
				
				count =qaboarddao.QAcountNo();
				//List list = qaboarddao.QAlist();
				
				int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1); 
					
				List list=	qaboarddao.QApagelist(startRow,endRow);
			
				if(count > 0){
					int startPage =(int)(currentPage /10)*10+1;   //pagelist ����������
					int pageBlock =10;  						//1���������� 10���� ���� �����ش�
					int endPage = startPage+pageBlock +1;			//pagelist ������������
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
			int userNum=(Integer) session.getAttribute("userNum");	//���ǿ��� �α��ε� ������ �����ѹ��� �޾ƿ�
			UserVo userVo=userdao.UserInfo(userNum); 		//�׹�ȣ�� �Ķ���ͷ� ���������� ������
			

			int QAseq = Integer.parseInt(request.getParameter("QAseq"));//�۹�ȣ ��������
			
			List clist = qaboarddao.QAcommentlist(QAseq);		//�۹�ȣ�� ��۸���Ʈ��������
			QABoardVo vo = qaboarddao.QABoarddetail(QAseq);		//�۹�ȣ�� �۰�������
			
			
			
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
		QABoardVo vo = qaboarddao.QABoarddetail(QAseq);				//������ �κ� ��������
		model.addAttribute("qavo", vo);
		return "QABoardDelete";
	}
	
	@RequestMapping(value = "/QABoardDeleteAction", method = RequestMethod.GET)
	public String QABoardDeleteAction(Model model, HttpServletRequest hsr) {
	
		int QAseq = Integer.parseInt(hsr.getParameter("QAseq"));
	    qaboarddao.QAdelete(QAseq);
	    
	    List list = qaboarddao.QAlist();	//����Ʈ�� �޾ƿ���DAO
		model.addAttribute("list", list);	//�޾ƿ� ����Ʈ��  ����
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
		int QAseq = Integer.parseInt(hsr.getParameter("QAseq"));  //������ �κ� �������� 
		QABoardVo vo = qaboarddao.QABoarddetail(QAseq);				//������ �κ� ��������
		model.addAttribute("qavo", vo);								//������ �κ� ��������
		model.addAttribute("bottom", "QABoardUpdate.jsp");
		return "main";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String search(Model model, HttpServletRequest hsr) {
		String sch="%"+hsr.getParameter("search")+"%";
	
	    List list = qaboarddao.search(sch);	//����Ʈ�� �޾ƿ���DAO
		model.addAttribute("list", list);	//�޾ƿ� ����Ʈ��  ����
		model.addAttribute("bottom", "QAlist.jsp");
		return "main";
	}
	

}