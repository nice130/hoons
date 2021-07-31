package com.prac.www.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.prac.www.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userservice;
	
	@PostMapping
	
}
