package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/pages")
public class AdminController {

	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		return "pages/" + step;
	}
}
