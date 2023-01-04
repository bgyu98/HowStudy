package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.ShopService;
import com.example.demo.vo.ShopVO;

@Controller
@RequestMapping("/shop")
public class ShopController {
	
	@Autowired
	private ShopService service;
	
	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		return "shop/" + step;
	}
	
	// 이용권 구매 페이지
	@RequestMapping("/ticket")
	public String selectTicketVOList(ShopVO vo, Model m) {
		List<ShopVO> list = service.selectTicketVOList(vo);
		m.addAttribute("list",list);
		return "shop/ticket";
	}
	
	// 이용권 구매 성공 페이지
	@RequestMapping("/paySuccess")
	public String paySuccess() {
		return "shop/paySuccess";
	}
	

}
