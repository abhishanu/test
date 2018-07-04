package com.example.java.gettingstarted.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.java.gettingstarted.entity.User;
import com.example.java.gettingstarted.repo.UserRepo;

@RestController
public class TestController {
	@Autowired
	UserRepo userRepo;

	@RequestMapping("/")
	public String home() {
		return "Hello World!";
	}

	@RequestMapping("/_ah/health")
	public String healthy() {
		// Message body required though ignored
		return "Still surviving.";
	}

	@GetMapping("/user")
	public List<User> user() {
		return userRepo.findAll();
	}
}
