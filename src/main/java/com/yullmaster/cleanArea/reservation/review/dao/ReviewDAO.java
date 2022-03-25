package com.yullmaster.cleanArea.reservation.review.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.yullmaster.cleanArea.reservation.review.model.Review;

@Repository
public interface ReviewDAO {

	public int insertReview(
			@Param("userId") int userId,
			@Param("reservationId") int reservationId,
			@Param("reservationCleanType") String reservationCleanType,
			@Param("reservationDate") String reservationDate,
			@Param("review") String review,
			@Param("imagePath") String imagePath);
	
	public List<Review> selectReviewList();
}
