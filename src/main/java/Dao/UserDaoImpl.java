package Dao;

import java.util.List;

import org.springframework.stereotype.Component;

import MyBatis.UserManager;
import Vo.UserVo;

@Component
public class UserDaoImpl implements UserDao {

	@Override
	public UserVo UserInfo(int userNum) {
		UserVo vo = new UserVo();
		vo = UserManager.getInfo(userNum);
		return vo;
	}

	@Override
	public void register(UserVo vo) {
		int userNum=0;
		if(String.valueOf(UserManager.getUserNumMax())==null) {
			userNum = 0;
		} else {
			userNum = UserManager.getUserNumMax();
		}
		
		vo.setUserNum(userNum+1);
		UserManager.register(vo);
	}

	@Override
	public UserVo login(UserVo vo) {
		UserVo dbvo = UserManager.getUser(vo);
		return dbvo;
	}

	@Override
	public void delUser(int userNum) {
		UserManager.delUser(userNum);
		
	}

	@Override
	public void updateUser(UserVo vo) {
		UserManager.updateUser(vo);
	}
	
	@Override
	public void updateUserAdmin(UserVo vo) {
		UserManager.updateUserAdmin(vo);
	}

	@Override
	public String getUserId(String userId) {
		String dbId = UserManager.getUserId(userId);
		return dbId;
	}

	@Override
	public List getUserList() {
		List list = UserManager.getUserList();
		return list;
	}

	@Override
	public UserVo find(UserVo vo) {
		UserVo dbvo = UserManager.getFind(vo);
		return dbvo;
	}
	
}
