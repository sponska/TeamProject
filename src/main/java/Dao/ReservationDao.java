package Dao;

import java.util.List;

import Vo.ReservationVo;

public interface ReservationDao {
	public ReservationVo getRoom(int roomNum);
	public List reservationList();
	public List resList();
	public void resUpdate(ReservationVo vo);
	public void resInsert(ReservationVo vo);
	public ReservationVo resInfo(int resNum);
	public List myResList(int userNum);
	public void resDel(int resNum);
}
