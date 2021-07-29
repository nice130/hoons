package com.prac.www.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class BoardController {
	
	// 실행할 메서드
	@GetMapping("index")
	public String list(Model model) {
		return "index";
	}
	
}
