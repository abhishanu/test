package com.example.java.gettingstarted.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.java.gettingstarted.entity.User;

public interface UserRepo extends JpaRepository<User, Integer> {
	
}
