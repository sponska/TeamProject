package Vo;

import java.text.SimpleDateFormat;

public class BoardVo {
	private int boanum;
	private String boatitle;
	private String boacontent;
	private int usernum;
	private String boadate;
	private int boahit;
	private String newDate;
	
	public String getNewDate() {
		newDate=boadate.substring(0,10);
		return newDate;
	}
	public int getBoanum() {
		return boanum;
	}
	public void setBoanum(int boanum) {
		this.boanum = boanum;
	}
	public String getBoatitle() {
		return boatitle;
	}
	public void setBoatitle(String boatitle) {
		this.boatitle = boatitle;
	}
	public String getBoacontent() {
		return boacontent;
	}
	
	public void setBoacontent(String boacontent) {
		this.boacontent = boacontent;
	}
	public int getUsernum() {
		return usernum;
	}
	public void setUsernum(int usernum) {
		this.usernum = usernum;
	}
	public String getboadate() {
		
		return boadate;
	}
	public void setBoadate(String boadate) {
		this.boadate = boadate;
	}
	public int getBoahit() {
		return boahit;
	}
	public void setBoahit(int boahit) {
		this.boahit = boahit;
	}
	@Override
	public String toString() {
		return "BoardVo [boanum=" + boanum + ", boatitle=" + boatitle
				+ ", boacontent=" + boacontent + ", usernum=" + usernum
				+ ", boadate=" + boadate + ", boahit=" + boahit + "]";
	}
	

	

}
