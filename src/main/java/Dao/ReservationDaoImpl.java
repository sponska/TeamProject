package Dao;

import java.util.List;

import org.springframework.stereotype.Component;

import MyBatis.ReservationManager;
import Vo.ReservationVo;

@Component
public class ReservationDaoImpl implements ReservationDao {
	
	@Override
	public ReservationVo getRoom(int roomNum) {
		ReservationVo vo = ReservationManager.getRoom(roomNum);
		return vo;
	}
	
	@Override
	public List reservationList() {
		List list = ReservationManager.getResList();
		return list;
	}

	@Override
	public List resList() {
		List list = ReservationManager.getList();
		return list;
	}

	@Override
	public void resUpdate(ReservationVo vo) {
		ReservationManager.resUpdate(vo);		
	}
	
	@Override
	public void resInsert(ReservationVo vo) {
		ReservationManager.resInsert(vo);		
	}

	@Override
	public ReservationVo resInfo(int resNum) {
		ReservationVo vo = ReservationManager.getRes(resNum);
		return vo;
	}

	@Override
	public List myResList(int userNum) {
		List list = ReservationManager.myResList(userNum);
		return list;
	}

	@Override
	public void resDel(int resNum) {
		ReservationManager.resDel(resNum);		
	}

}
