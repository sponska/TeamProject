package Vo;

import java.sql.Timestamp;

public class QABoardVo {
private int QAboaNum;
private String QAboaTitle;
private String QAboaContent;
private int userNum;
private int QAboaHit;
private Timestamp QAboaDate;
private String userName;
private String userPwd;

public int getQAboaNum() {
	return QAboaNum;
}
public void setQAboaNum(int qAboaNum) {
	QAboaNum = qAboaNum;
}
public String getQAboaTitle() {
	return QAboaTitle;
}
public void setQAboaTitle(String qAboaTitle) {
	QAboaTitle = qAboaTitle;
}
public String getQAboaContent() {
	return QAboaContent;
}
public void setQAboaContent(String qAboaContent) {
	QAboaContent = qAboaContent;
}
public int getUserNum() {
	return userNum;
}
public void setUserNum(int userNum) {
	this.userNum = userNum;
}
public int getQAboaHit() {
	return QAboaHit;
}
public void setQAboaHit(int qAboaHit) {
	QAboaHit = qAboaHit;
}
public Timestamp getQAboaDate() {
	return QAboaDate;
}
public void setQAboaDate(Timestamp qAboaDate) {
	QAboaDate = qAboaDate;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getUserPwd() {
	return userPwd;
}
public void setUserPwd(String userPwd) {
	this.userPwd = userPwd;
}

}
