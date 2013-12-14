package Dao;

import java.util.List;

import javax.xml.soap.Detail;

import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Component;

import MyBatis.BoardManager;
import MyBatis.QAManager;
import Vo.BoardVo;
 
@Component
public class BoardDaoImpl implements BoardDao {

	@Override
	public List boardList() {
		List list = null;
		list = BoardManager.getBoardList();
		return list;
	}
	@Override
	public void boainse(BoardVo vo){
		BoardManager.boainse(vo);
	}
	@Override
	public BoardVo Boadetail(int boanum) {
			BoardVo vo =new BoardVo();
			vo = BoardManager.getBoadet(boanum);
			return vo;
	}
	@Override
	public void boaUp(BoardVo vo) {
		BoardManager.boaUp(vo);
		
	}
	@Override
	public void boadel(int boanum) {
		BoardManager.boadel(boanum);
		
	}
	@Override
	public void Hit(int boanum) {
		BoardManager.Hit(boanum); 

	}
	@Override
	public int getRows() {
		int rows = BoardManager.getRows(); 
		return rows;
	}
	@Override
	public List getRecentList() {
		List list = BoardManager.getRecentList();
		return list;
	}
	@Override
	public List getArticleList(int start, int end) {
		List db = BoardManager.getArticleList(start, end);
		return db;
	}
	@Override
	public List search(String sch) {
		List list = BoardManager.search(sch);
		return list;
	}
	@Override
	public BoardVo Titleprev(int seq) {
		BoardVo vo = BoardManager.prevtitle(seq);
		return vo;
	}
	public BoardVo Titlenext(int seq) {
		BoardVo vo = BoardManager.nexttitle(seq);
		return vo;
	}
}
