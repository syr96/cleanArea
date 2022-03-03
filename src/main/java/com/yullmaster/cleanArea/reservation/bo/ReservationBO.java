package com.yullmaster.cleanArea.reservation.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yullmaster.cleanArea.reservation.dao.ReservationDAO;
import com.yullmaster.cleanArea.reservation.model.User;

@Service
public class ReservationBO {

	@Autowired
	private ReservationDAO reservationDAO;
	
	public int addReservation(
			String name, String phoneNumber,
			String address, String cleanType, String date, String time,
			User user) {
		
		User result = reservationDAO.selectUser(name, phoneNumber);
		reservationDAO.selectUserById(id);
		if(result != null) { // 이미 입력된 사용자 정보가 있는 경우
			
			return reservationDAO.inserReservation(user.getId(), address, cleanType, date, time);
			
		} else { // 없는 경우
			
		}
	}
	
//	public int addReservation(User user, Reservation reservation) {
//		
//	}
}
