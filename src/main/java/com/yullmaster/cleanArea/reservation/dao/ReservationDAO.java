package com.yullmaster.cleanArea.reservation.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.yullmaster.cleanArea.reservation.model.Reservation;
import com.yullmaster.cleanArea.reservation.model.User;

@Repository
public interface ReservationDAO {

	// 예약 등록 시 회원의 정보
	public int inserReservation(
			@Param("userId") int userId,
			@Param("address") String address,
			@Param("cleanType") String cleanType,
			@Param("dateTime") String date);
	
	public int insertUser(User user);
	
	public User selectUser(
			@Param("name") String name,
			@Param("phoneNumber") String phoneNumber);
	
	public List<Reservation> selectReservation(@Param("id") int id);
}
