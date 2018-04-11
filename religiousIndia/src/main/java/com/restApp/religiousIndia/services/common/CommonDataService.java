package com.restApp.religiousIndia.services.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.restApp.religiousIndia.data.entities.Cities;
import com.restApp.religiousIndia.data.repositry.CityRepositry;

@Service
@Scope("prototype")
public class CommonDataService {

	@Autowired
	CityRepositry cityRepositry;
	
	public Iterable<Cities> getAllCities(){
		return cityRepositry.findAll();
	}
}
