package com.yullmaster.cleanArea.reservation.review;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.yullmaster.cleanArea.reservation.review.bo.ReviewBO;

@RestController
@RequestMapping("/review")
public class ReviewRestController {

	@Autowired
	private ReviewBO reviewBO;
	
	@PostMapping("/create")
	public Map<String, String> review(
			@RequestParam("userId") int userId,
			@RequestParam("reservationId") int reservationId,
			@RequestParam("reservationCleanType") String reservationCleanType,
			@RequestParam("reservationDate") Date reservationDate,
			@RequestParam("review") String review,
			@RequestParam(value = "file", required = false) MultipartFile file) {
		
		int count = reviewBO.addReview(userId, reservationId, reservationCleanType, reservationDate, review, file);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
}
