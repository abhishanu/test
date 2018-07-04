package com.restApp.religiousIndia.services.users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.restApp.religiousIndia.data.entities.users.UserDetailsImpl;
import com.restApp.religiousIndia.data.entities.users.UserRoles;
import com.restApp.religiousIndia.data.repositry.users.UserDetailsRepositry;
import com.restApp.religiousIndia.data.repositry.users.UserRolesRepositry;
import com.restApp.religiousIndia.model.roleName.RoleName;
import com.restApp.religiousIndia.services.imageServices.RetriveImageService;
import com.restApp.religiousIndia.utilities.exception.UserNotSavedException;

@Service
public class UserServices {

	@Autowired
	RetriveImageService retriveImageService;

	@Autowired
	UserRolesRepositry userRolesRepositry;

	@Autowired
	UserDetailsRepositry userDetailsRepositry;

	public RoleName getUserRoles(String userRoleID) {
		UserRoles userRoles = userRolesRepositry.findOne(userRoleID);
		if (userRoles != null) {
			return userRoles.getName();
		}
		return RoleName.ROLE_USER;
	}

	public UserDetailsImpl getUserDetails(String userId) {
		UserDetailsImpl userDetails = userDetailsRepositry.findByEmail(userId)
				.orElseThrow(() -> new UsernameNotFoundException("User Name not found"));

		return userDetails;
	}

	public Integer saveUserPrimaryDetails(UserDetailsImpl userDetails) throws UserNotSavedException {
		try {
			return userDetailsRepositry.save(userDetails).getUserId();

		} catch (Exception e) {
			throw new UserNotSavedException("User Not Saved dew to: " + e);
		}

	}

}
