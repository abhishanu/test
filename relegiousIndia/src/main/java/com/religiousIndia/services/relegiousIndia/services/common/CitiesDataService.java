package com.religiousIndia.services.relegiousIndia.services.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

import com.religiousIndia.services.relegiousIndia.data.entities.Cities;
import com.religiousIndia.services.relegiousIndia.data.repositry.CityRepositry;

@Service
public class CitiesDataService {

	@Autowired
	ApplicationContext applicationContex;

	@Autowired
	CityRepositry cityRepositry;

	public Iterable<Cities> getAllCities() {
		Iterable<Cities> findAll = cityRepositry.findAll();
		
		return findAll;
	}
}
