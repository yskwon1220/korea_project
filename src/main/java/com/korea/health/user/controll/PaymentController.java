package com.korea.health.user.controll;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/style_jooho/payment/{main}")
public class PaymentController {

	
	
	@RequestMapping
	String view() {
		return "style_jooho/payment/payment";
	}
	
}
