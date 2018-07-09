package com.restApp.religiousIndia.config;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.restApp.religiousIndia.data.entities.users.Login;
import com.restApp.religiousIndia.data.entities.users.UserDetailsImpl;
import com.restApp.religiousIndia.data.repositry.users.LogInRepositry;
import com.restApp.religiousIndia.data.repositry.users.UserDetailsRepositry;
import com.restApp.religiousIndia.security.UserPrincipal;

@Service
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	LogInRepositry logInRepositry;

	@Autowired
	UserDetailsRepositry userDetailsRepositry;

	@Override
	public UserDetails loadUserByUsername(String usernameOrEmail) throws UsernameNotFoundException {
		Login login = logInRepositry.findByUserId(usernameOrEmail)
				.orElseThrow(() -> new UsernameNotFoundException("User Name not found"));

		UserDetailsImpl user = userDetailsRepositry.findByEmail(usernameOrEmail)
				.orElseThrow(() -> new UsernameNotFoundException("User Name not found"));

		return UserPrincipal.create(login, user);
	}

	// This method is used by JWTAuthenticationFilter
	@Transactional
	public UserDetails loadUserById(String id) {
		Login login = logInRepositry.findByUserId(id)
				.orElseThrow(() -> new UsernameNotFoundException("User not found with id : " + id));

		UserDetailsImpl user = userDetailsRepositry.findByEmail(login.getUserId())
				.orElseThrow(() -> new UsernameNotFoundException("User Name not found"));

		return UserPrincipal.create(login, user);
	}

}
