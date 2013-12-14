package MyBatis;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.soap.Detail;

import Vo.BoardVo;
import Vo.UserVo;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class BoardManager {
	private static SqlSessionFactory sqlMapper;

	static {
		try {
			Reader reader = Resources
					.getResourceAsReader("MyBatis/SqlMapConfig.xml");
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		} catch (IOException e) {
			throw new RuntimeException(
					"Something bad happened while building the SqlMapClient instance."
							+ e, e);
		}
	}


	//public static BoardVo getArticle(int boaNum) {
		
	//	SqlSession session = sqlMapper.openSession();
	//	BoardVo boardDto = session.selectOne("getArticle", boaNum);
	//	session.close();
	//	return boardDto;
		
//	}
	public static List getBoardList() {
		
		SqlSession session = sqlMapper.openSession();
		List list = session.selectList("getBoardList");
		session.close();
		return list;
	}
	public static void boainse(BoardVo vo){
		
		SqlSession session = sqlMapper.openSession();
		session.update("boardinsert",vo);
		session.commit();
		session.close();
	}
	
	public static int getBoaNumMax(){
		SqlSession session = sqlMapper.openSession();
		int boanum = session.selectOne("getBoaNumMax");
		session.close();
		return boanum;
	}
	public static BoardVo getBoadet(int boanum) {
		SqlSession session = sqlMapper.openSession();
		BoardVo vo=session.selectOne("getboardseq", boanum);
		session.close();
		return vo;
	}
	public static void boaUp(BoardVo vo) {
		SqlSession session = sqlMapper.openSession();
		session.update("boardUp",vo);
		session.commit();
		session.close();
		
	}
	public static void boadel(int boanum){
		SqlSession session = sqlMapper.openSession();
		session.update("boadel", boanum);
		session.commit();
		session.close();
	}
	public static void Hit(int boanum){
		SqlSession session = sqlMapper.openSession();
		session.update("boahit", boanum);
		session.commit();
		session.close();
	}
	public static int getRows(){
		SqlSession session = sqlMapper.openSession();
		int rows = session.selectOne("getRows");
		session.close();
		return rows;
	}
	public static List getRecentList() {
		SqlSession session = sqlMapper.openSession();
		List list = session.selectList("getRecentList");
		session.close();
		return list;
	}
	public static List getArticleList(int start, int end) {
		Map<String, Integer> values = new HashMap<String, Integer>();
		values.put("start", start);
		values.put("end", end);
		SqlSession session = sqlMapper.openSession();
		List list = session.selectList("getArticleList",values);
		session.close();
		return list;
	}
	public static List search(String sch){
		SqlSession session = sqlMapper.openSession();
		List list = session.selectList("searchboa",sch);
		session.close();
		return list;
	}
	public static BoardVo prevtitle(int seq) {
		SqlSession session = sqlMapper.openSession();
		BoardVo vo=session.selectOne("getprevtitle", seq);
		session.close();
		return vo;
	}
	public static BoardVo nexttitle(int seq) {
		SqlSession session = sqlMapper.openSession();
		BoardVo vo=session.selectOne("getnexttitle", seq);
		session.close();
		return vo;
	}

}
