package Vo;

import java.sql.Timestamp;

public class UserVo {
	private int userNum;
	private String userId;
	private String userPwd;
	private Timestamp regDate;
	private String userOut;
	private String userName;
	private String userTel;
	private String userAddr;
	private String userEmail;
	private String admin;
	
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	public String getUserOut() {
		return userOut;
	}
	public void setUserOut(String userOut) {
		this.userOut = userOut;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}
	public String getUserAddr() {
		return userAddr;
	}
	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	@Override
	public String toString() {
		return "UserVo [userNum=" + userNum + ", userId=" + userId
				+ ", userPwd=" + userPwd + ", regDate=" + regDate
				+ ", userOut=" + userOut + ", userName=" + userName
				+ ", userTel=" + userTel + ", userAddr=" + userAddr
				+ ", userEmail=" + userEmail + ", admin=" + admin + "]";
	}
	
}
