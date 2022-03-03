package com.yullmaster.cleanArea.reservation.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.yullmaster.cleanArea.reservation.model.User;

@Repository
public interface ReservationDAO {

	// 예약 등록 시 회원의 정보
	public int inserReservation(
			@Param("userId") int userId,
			@Param("address") String address,
			@Param("cleanType") String cleanType,
			@Param("date") String date,
			@Param("time") String time);
	
	public int insertUser(User user);
	
	public User selectUserById(@Param("id") int id);
	
	public User selectUser(
			@Param("name") String name,
			@Param("phoneNumber") String phoneNumber);
}
