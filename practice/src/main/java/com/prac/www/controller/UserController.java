package com.prac.www.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.prac.www.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userservice;
	
	
	
}
