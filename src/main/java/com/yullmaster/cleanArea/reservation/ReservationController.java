package com.yullmaster.cleanArea.reservation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/reservation")
// view 를 위한 Controller
public class ReservationController {
	
	@GetMapping("/view")
	public String reservationView() {
		return "reservation/view";
	}
	
	@GetMapping("/lookup_view")
	public String reservationLookupView() {
		return "reservation/lookup";
	}
}
