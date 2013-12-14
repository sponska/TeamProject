package Dao;


import java.util.List;

import Vo.UserVo;

public interface UserDao {
	public UserVo UserInfo(int userNum);
	public void register(UserVo vo);
	public UserVo login(UserVo vo);
	public void delUser(int userNum);
	public void updateUser(UserVo vo);
	public void updateUserAdmin(UserVo vo);
	public String getUserId(String userId);
	public List getUserList();
	public UserVo find(UserVo vo);
}
