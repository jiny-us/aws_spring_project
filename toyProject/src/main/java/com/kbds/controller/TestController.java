package com.kbds.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class TestController {

	@RequestMapping("/")
	public String test() {
		return "index";
	}
	
	@RequestMapping("/aboutus")
	public String goToContent() {
		return "aboutUs";
	}
}
