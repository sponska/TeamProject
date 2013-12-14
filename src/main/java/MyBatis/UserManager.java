package MyBatis;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.List;




import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import Vo.BoardVo;
import Vo.UserVo;

public class UserManager {
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
	
	public static UserVo getInfo(int userNum) {
		SqlSession session = sqlMapper.openSession();
		UserVo vo = session.selectOne("getInfo", userNum);
		session.close();
	    return vo;
	}
	public static void register(UserVo vo) {
		SqlSession session = sqlMapper.openSession();
		session.update("registerAccount", vo);
		session.update("registerInfo",vo);
		session.commit();
		session.close();
	}
	public static int getUserNumMax() {
		SqlSession session = sqlMapper.openSession();
		int userNum = session.selectOne("getUserNumMax");
		session.close();
		return userNum;
	}
	public static UserVo getUser(UserVo vo) {
		SqlSession session = sqlMapper.openSession();
		UserVo dbvo = session.selectOne("getUser", vo);;
		session.close();
		return dbvo;
	}
	public static void delUser(int userNum) {
		SqlSession session = sqlMapper.openSession();
		session.update("delUser", userNum);
		session.commit();
		session.close();
	}
	public static void updateUser(UserVo vo) {
		SqlSession session = sqlMapper.openSession();
		session.update("updateUser", vo);
		session.commit();
		session.close();
	}
	public static void updateUserAdmin(UserVo vo) {
		SqlSession session = sqlMapper.openSession();
		session.update("updateUser", vo);
		session.update("updateUserAdmin", vo);
		session.commit();
		session.close();
	}
	public static String getUserId(String userId) {
		SqlSession session = sqlMapper.openSession();
		String dbId = session.selectOne("getUser", userId);;
		session.close();
		return dbId;
	}
	public static List getUserList() {
		SqlSession session = sqlMapper.openSession();
		List list = session.selectList("getUserList");
		session.close();
	    return list;
	}
	public static UserVo getFind(UserVo vo) {
		SqlSession session = sqlMapper.openSession();
		UserVo dbvo = session.selectOne("getFind",vo);
		session.close();
	    return dbvo;
	}
}
