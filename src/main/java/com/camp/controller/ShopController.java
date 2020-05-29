package com.camp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/shop")
public class ShopController {
	
	@RequestMapping("/{step}.do")
	public String start(@PathVariable String step) {
		
		return "/shop/"+step;
	}
	

	



	
}
