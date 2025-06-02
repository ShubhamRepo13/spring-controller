package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SpringDemo {

	@GetMapping("/welcome")
	public String mypage()
	{
		return "redirect:/welcome.html";
	}
}
