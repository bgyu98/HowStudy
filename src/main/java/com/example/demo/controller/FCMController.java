package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class FCMController {

	 private final FirebaseInit init = new FirebaseInit();
	    @GetMapping("/v1")
	    public String v1(){
	        init.init();
	        return "index";
	    };
}
