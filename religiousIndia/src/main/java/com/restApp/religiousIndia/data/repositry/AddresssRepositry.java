package com.restApp.religiousIndia.data.repositry;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.restApp.religiousIndia.data.entities.Address;

public interface AddresssRepositry extends CrudRepository<Address, String> {
	Address findByIsActiveAndAddressID(String isActive, String addressId);

	List<Address> findByCityIdIn(List<String> cityIdList);

	List<Address> findByCityIn(List<String> cityList);

	List<Address> findByisTempleAddressAndCityIn(String isTempleAddress, List<String> cityList);
}
