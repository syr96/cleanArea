package com.yullmaster.cleanArea.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
// view 를 위한 Controller
public class MainController {
	
	@GetMapping("/main_view")
	public String main() {
		return "main/main";
	}
}
