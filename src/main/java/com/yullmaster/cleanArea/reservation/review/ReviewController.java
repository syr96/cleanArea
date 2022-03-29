package com.yullmaster.cleanArea.reservation.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yullmaster.cleanArea.reservation.model.Reservation;
import com.yullmaster.cleanArea.reservation.review.bo.ReviewBO;
import com.yullmaster.cleanArea.reservation.review.model.ReviewDetail;

@Controller
@RequestMapping("/review")
public class ReviewController {

	@Autowired
	private ReviewBO reviewBO;
	
	@GetMapping("/create_view")
	public String reviewCreatView(
			@RequestParam("id") int id,
			Model model) {
		
		Reservation reservation = reviewBO.getReservation(id);
		
		model.addAttribute("reservation", reservation);
		
		return "review/createReview";
	}
	
	@GetMapping("/list_view")
	public String reviewListView(
			Model model) {
		
		List<ReviewDetail> reviewlist = reviewBO.getReviewList();
		
		model.addAttribute("reviewList", reviewlist);
		
		return "review/listReview";
	}
}
