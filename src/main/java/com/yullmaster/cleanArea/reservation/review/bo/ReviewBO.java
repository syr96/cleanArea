package com.yullmaster.cleanArea.reservation.review.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yullmaster.cleanArea.reservation.dao.ReservationDAO;
import com.yullmaster.cleanArea.reservation.model.Reservation;

@Service
public class ReviewBO {

	@Autowired
	private ReservationDAO reservationDAO;
	
	public List<Reservation> getId (int id) {
		return reservationDAO.selectReservationId(id);
	}
}
