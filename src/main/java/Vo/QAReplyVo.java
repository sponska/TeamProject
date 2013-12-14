package Vo;

public class QAReplyVo {

private int RepNum;
private int QABoaNum;
private String RepContent;
private int UserNum;
private String UserName;

public String getUserName() {
	return UserName;
}

public void setUserName(String userName) {
	UserName = userName;
}

public int getRepNum() {
	return RepNum;
}

public void setRepNum(int repNum) {
	RepNum = repNum;
}

public int getQABoaNum() {
	return QABoaNum;
}

public void setQABoaNum(int qABoaNum) {
	QABoaNum = qABoaNum;
}

public String getRepContent() {
	return RepContent;
}

public void setRepContent(String repContent) {
	RepContent = repContent;
}

public int getUserNum() {
	return UserNum;
}

public void setUserNum(int userNum) {
	UserNum = userNum;
}

@Override
public String toString() {
	return "QAReplyVo [RepNum=" + RepNum + ", QABoaNum=" + QABoaNum
			+ ", RepContent=" + RepContent + ", UserNum=" + UserNum + "]";
}
}
