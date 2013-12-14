package Dao;

import java.util.List;

import org.springframework.stereotype.Component;

import MyBatis.BoardManager;
import MyBatis.QAManager;
import Vo.QABoardVo;
import Vo.QAReplyVo;

@Component
public class QABoardDaoImpl implements QABoardDao {

	@Override
	public void QAinsert(QABoardVo vo) {
		
		QAManager.QABoardInsert(vo);
	}
	@Override
	public List QAlist() {
		List list = QAManager.QAlist();
		return list;
		
	}
	@Override
	public QABoardVo QABoarddetail(int QAseq) {
		QABoardVo vo = QAManager.QABoarddetail(QAseq);
		return vo;
	}
	@Override
	public void QAdelete(int qaSeq) {
		QAManager.QABoarddelete(qaSeq);
	}
	@Override
	public void QAupdate(QABoardVo vo) {
		QAManager.QABoardupdate(vo);
	}
	@Override
	public List getRecentList() {
		List list = QAManager.getRecentList();
		return list;
	}
	@Override
	public List search(String sch) {
		List list = QAManager.search(sch);
		return list;
	}
	@Override
	public void QACommentInsert(QAReplyVo qr) {
		QAManager.QACommentInsert(qr);
	}
	@Override
	public List QAcommentlist(int qr) {

		List clist = QAManager.QAcommentlist(qr);
		return clist;
	}
	@Override
	public void qahit(int seq) {
		QAManager.QAhit(seq);
	}
	@Override
	public void QACommentDel(int commentseq) {
		QAManager.QACommentDel(commentseq);
	}
	@Override
	public List QApagelist(int startRow, int endRow)throws Exception  {
		List pagelist= QAManager.QApagelist(startRow ,endRow);
		 return pagelist;
	}
	@Override
	public int QAcountNo() throws Exception{
		return QAManager.QAcountNo();
	}

}
