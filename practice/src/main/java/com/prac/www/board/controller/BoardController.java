package com.prac.www.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class BoardController {
	
	// 메인화면
	@GetMapping("index")
	public String index(Model model) {
		return "index";
	}
	
	//상품구매 페이지
	@GetMapping("shop")
	public String shop(Model model) {
		return "shop";
	}
	
	//로그인 페이지
	@GetMapping("login")
	public String login(Model model) {
		return "user/login";
	}
	
}
