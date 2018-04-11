package com.restApp.religiousIndia.data.repositry;

import org.springframework.data.repository.CrudRepository;

import com.restApp.religiousIndia.data.entities.Address;

public interface AddresssRepositry extends CrudRepository<Address, String> {
	Address findByIsActiveAndId(String isActive, String addressId);
}
