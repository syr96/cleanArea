package com.yullmaster.cleanArea.reservation.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yullmaster.cleanArea.reservation.dao.ReservationDAO;

@Service
public class ReservationBO {

	@Autowired
	private ReservationDAO reservationDAO;
	
	public int userInfo(String name, String phoneNumber) {
		
		return reservationDAO.insertUserInfo(name, phoneNumber);
		
	}
	
	public int reservationInfo(String address, String cleanType, String date, String time) {
		
		return reservationDAO.insertReservationInfo(address, cleanType, date, time);
		
	}
}
