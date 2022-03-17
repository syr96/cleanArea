package com.yullmaster.cleanArea.reservation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yullmaster.cleanArea.reservation.bo.ReservationBO;
import com.yullmaster.cleanArea.reservation.model.Reservation;

@Controller
@RequestMapping("/reservation")
// view 를 위한 Controller
public class ReservationController {
	
	@Autowired
	private ReservationBO reservationBO;
	
	@GetMapping("/view")
	public String reservationView() {
		return "reservation/view";
	}
	
	@GetMapping("/lookup_view")
	public String reservationLookupView() {
		return "reservation/lookup";
	}
	
	@GetMapping("/lookup_list")
	public String reservationLookupList(
			@RequestParam("id") int id,
			Model model) {
		
		List<Reservation> reservationList = reservationBO.getReservation(id);
		
		model.addAttribute("reservationList", reservationList);
		
		return "reservation/lookupList";
	}
}
