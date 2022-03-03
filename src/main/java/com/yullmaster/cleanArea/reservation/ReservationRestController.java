package com.yullmaster.cleanArea.reservation;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.yullmaster.cleanArea.reservation.bo.ReservationBO;

@RestController
@RequestMapping("/reservation")
public class ReservationRestController {
	
	@Autowired
	private ReservationBO reservationBO;
	
	@PostMapping("/in")
	public Map<String, String> reservation(
			@RequestParam("name") String name,
			@RequestParam("phoneNumber") String phoneNumber,
			@RequestParam("address") String address,
			@RequestParam("cleanType") String cleanType,
			@RequestParam("date") String date,
			@RequestParam("time") String time) {
		
		
	}
	
//	public String addReservation(
//			@ModelAttribute User user,
//			@ModelAttribute Reservation reservation,
//			Model model) {
//		
//		
//	}
}
