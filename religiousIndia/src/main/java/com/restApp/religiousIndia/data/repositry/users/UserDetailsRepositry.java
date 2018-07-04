package com.restApp.religiousIndia.data.repositry.users;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.restApp.religiousIndia.data.entities.users.UserDetailsImpl;

public interface UserDetailsRepositry extends CrudRepository<UserDetailsImpl, Integer> {
	Optional<UserDetailsImpl> findByEmail(String mailId);

	UserDetailsImpl findByUserId(Integer id);

	UserDetailsImpl findByPanditId(String panditId);

	List<UserDetailsImpl> findByAddressIdIn(List<String> addressId);

	List<UserDetailsImpl> findByisActiveAndFirstNameContainingOrMiddleNameContainingOrLastNameContaining(String string,
			String firstName, String middleName, String lastName);
}
