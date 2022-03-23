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

@Controller
@RequestMapping("/review")
public class ReviewController {

	@Autowired
	private ReviewBO reviewBO;
	
	@GetMapping("/create_view")
	public String reviewCreatView(
			@RequestParam("id") int id,
			Model model) {
		
		
		// list 형태 아니어도 된다. 수정해야함
		List<Reservation> reservationListById = reviewBO.getId(id);
		
		model.addAttribute("reservationListById", reservationListById);
		
		return "review/createReview";
	}
	
	@GetMapping("/list_view")
	public String reviewListView() {
		return "review/listReview";
	}
}
