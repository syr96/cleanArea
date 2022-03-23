package com.yullmaster.cleanArea.reservation.review;

import java.util.Map;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/review")
public class ReviewRestController {

	@PostMapping("/create")
	public Map<String, String> review(
			@RequestParam("review") String review,
			@RequestParam(value = "file", required = false) MultipartFile file) {
		
	}
}
