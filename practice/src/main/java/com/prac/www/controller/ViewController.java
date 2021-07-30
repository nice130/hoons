package com.prac.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class ViewController {
	
	// 메인화면
	@GetMapping("")
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
	
	//회원가입 페이지
	@GetMapping("join")
	public String join(Model mode) {
		return "user/join";
	}
	
	//가입완료 페이지
	@GetMapping("joinResult")
	public String joinResult(Model model) {
		return "user/joinResult";
	}
	
}
