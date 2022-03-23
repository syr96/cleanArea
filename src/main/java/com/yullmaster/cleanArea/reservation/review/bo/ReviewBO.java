package com.yullmaster.cleanArea.reservation.review.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.yullmaster.cleanArea.common.FileManagerService;
import com.yullmaster.cleanArea.reservation.dao.ReservationDAO;
import com.yullmaster.cleanArea.reservation.model.Reservation;
import com.yullmaster.cleanArea.reservation.review.dao.ReviewDAO;

@Service
public class ReviewBO {

	@Autowired
	private ReservationDAO reservationDAO;
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	public List<Reservation> getId (int id) {
		return reservationDAO.selectReservationId(id);
	}
	
	public int addReview(
			int userId, int reservationId, 
			String reservationCleanType, String reservationDate,
			String review, MultipartFile file) {
		
		String filePath = FileManagerService.saveFile(userId, file);
		
		return reviewDAO.insertReview(userId, reservationId, reservationCleanType, reservationDate, review, filePath);
	}
}
