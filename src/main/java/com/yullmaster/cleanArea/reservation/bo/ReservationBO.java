package com.yullmaster.cleanArea.reservation.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yullmaster.cleanArea.reservation.dao.ReservationDAO;
import com.yullmaster.cleanArea.reservation.model.Reservation;
import com.yullmaster.cleanArea.reservation.model.User;

@Service
public class ReservationBO {

	@Autowired
	private ReservationDAO reservationDAO;
	
	public int addReservation(
			String name, String phoneNumber,
			String address, String cleanType, String date, String time) {
		
		// 2022-03-07 21:23:30 일반적인 시간 형태
		String dateTime = date + " " + time + ":00:00";
		
		User user = reservationDAO.selectUser(name, phoneNumber);
		
		if(user != null) { // 이미 입력된 사용자 정보가 있는 경우
			
			return reservationDAO.inserReservation(user.getId(), address, cleanType, dateTime);
			
		} else { // 없는 경우
			User newUser = new User();
			newUser.setName(name);
			newUser.setPhoneNumber(phoneNumber);
			
			reservationDAO.insertUser(newUser);
			
			return reservationDAO.inserReservation(newUser.getId(), address, cleanType, dateTime);
		}
	}
	
	public List<Reservation> getUser (String name, String phoneNumber) {
		
		User user = reservationDAO.selectUser(name, phoneNumber);
		
		return reservationDAO.selectReservationList(user.getId());
	}
}
