package MyBatis;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import Vo.QABoardVo;
import Vo.QAReplyVo;

public class QAManager {
	private static final Object QAboaNum = null;
	private static final String QAlist = null;
	private static SqlSessionFactory SqlMapper;
	private static final String QAcommentlist = null;
	
	static {
		try{
			Reader reader = Resources.getResourceAsReader("MyBatis/SqlMapConfig.xml");
			SqlMapper = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		}catch(IOException e){
			throw new RuntimeException(
					"Something bad happened while building the SqlMapClient instance."
							+ e, e	);
		}
	}
	
	public static void QABoardInsert(QABoardVo vo){
		SqlSession session = SqlMapper.openSession();
		session.update("QABoardInsert", vo);
		session.commit();
		session.close();
	}
	
	public static List QAlist(){
		
		SqlSession session =SqlMapper.openSession();
		List list = session.selectList("QAlist");
		session.close();
		return list;
	}
	
	public static QABoardVo QABoarddetail(int QAseq) {
		SqlSession session =SqlMapper.openSession();
		QABoardVo vo = session.selectOne("QABoarddetail",QAseq);
		session.close();
		
		return vo;
	}
	
	public static void QABoarddelete(int qaSeq) {
		SqlSession session =SqlMapper.openSession();
		session.delete("QABoarddelete",qaSeq);
		session.commit();
		session.close();
	}
	
	public static void QABoardupdate(QABoardVo vo) {
		SqlSession session =SqlMapper.openSession();
		session.update("QABoardupdate", vo);
		session.commit();
		session.close();
	}
	
	public static List getRecentList() {
		SqlSession session = SqlMapper.openSession();
		List list = session.selectList("getQARecentList");
		session.close();
		return list;
	}
	
	public static List search(String sch) {
		SqlSession session = SqlMapper.openSession();
		List list = session.selectList("search", sch);
		session.close();
		return list;
	}
	public static void QACommentInsert(QAReplyVo qr) {
		SqlSession session = SqlMapper.openSession();
		session.update("QACommentInsert", qr);
		session.commit();
		session.close();
	}
	
	public static List QAcommentlist(int qr) {
		
		SqlSession session = SqlMapper.openSession();
		List clist = session.selectList("QAcommentlist",qr);
		session.close();
		return clist;
		
	}

	public static void QAhit(int seq) {
		SqlSession session = SqlMapper.openSession();
		
		session.update("qaboahit", seq);
		session.commit();
		session.close();
	}

	public static void QACommentDel(int commentseq) {
		SqlSession session = SqlMapper.openSession();
		session.delete("QACommentDel",commentseq);
		session.commit();
		session.close();
		
	}

	public static List QApagelist(int startRow, int endRow) {
		SqlSession session = SqlMapper.openSession();
		Map<String, Integer> values = new HashMap<String, Integer>();
		values.put("start", startRow);
		values.put("end", endRow);
		System.out.println(startRow+","+endRow);
		List list = session.selectList("QApagelist",values);
		session.commit();
		session.close();
		return list;
		
	}

	public static int QAcountNo() {
		SqlSession session = SqlMapper.openSession();
		int result = session.selectOne("QAcountNo()");
		session.commit();
		session.close();
		return result;
	}
}
