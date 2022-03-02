package com.yullmaster.cleanArea.reservation.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ReservationDAO {

	// 예약 등록 시 회원의 정보
	public int insertUserInfo(
			@Param("name") String name,
			@Param("phoneNumber") String phoneNumber);
	
	public int insertReservationInfo(
			@Param("address") String address,
			@Param("cleanType") String cleanType,
			@Param("date") String date,
			@Param("time") String time);
}
