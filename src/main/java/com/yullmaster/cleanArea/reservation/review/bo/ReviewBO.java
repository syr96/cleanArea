package com.yullmaster.cleanArea.reservation.review.bo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.yullmaster.cleanArea.common.FileManagerService;
import com.yullmaster.cleanArea.reservation.dao.ReservationDAO;
import com.yullmaster.cleanArea.reservation.model.Reservation;
import com.yullmaster.cleanArea.reservation.model.User;
import com.yullmaster.cleanArea.reservation.review.dao.ReviewDAO;
import com.yullmaster.cleanArea.reservation.review.model.Review;
import com.yullmaster.cleanArea.reservation.review.model.ReviewDetail;

@Service
public class ReviewBO {

	
	@Autowired
	private ReservationDAO reservationDAO;
	
	public Reservation getReservation (int id) {
		return reservationDAO.selectReservation(id);
	}

	
	@Autowired
	private ReviewDAO reviewDAO;
	
	public int addReview(
			int userId, int reservationId,
			String reservationCleanType, Date reservationDate,
			String review, MultipartFile file) {
		
		String filePath = FileManagerService.saveFile(userId, file);
		
		return reviewDAO.insertReview(userId, reservationId, reservationCleanType, reservationDate, review, filePath);
	}
	
	public List<ReviewDetail> getReviewList() {
		
		List<Review> reviewList = reviewDAO.selectReviewList();
		
		List<ReviewDetail> reviewDetailList = new ArrayList<>();
		
		for(Review review:reviewList) {
			
			int userId = review.getUserId();
			
			User user = reservationDAO.selectUserById(userId);
			
			ReviewDetail reviewDetail = new ReviewDetail();
			
			reviewDetail.setReview(review);
			reviewDetail.setUser(user);
			
			reviewDetailList.add(reviewDetail);
		}
		
		return reviewDetailList;
	}
}
