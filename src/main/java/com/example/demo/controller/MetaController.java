package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/meta")
public class MetaController {

	
	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		return "meta/" + step;
	}
}
