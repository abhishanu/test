package com.restApp.religiousIndia.services.common;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.restApp.religiousIndia.data.entities.Cities;
import com.restApp.religiousIndia.data.repositry.CityRepositry;
import com.restApp.religiousIndia.data.repositry.login.LoginTypesRepositry;

@Service
@Scope("prototype")
public class CommonDataService {

	@Autowired
	CityRepositry cityRepositry;

	@Autowired
	LoginTypesRepositry loginTypesRepositry;

	public List<Cities> getAllCities() {
		Iterable<Cities> allCitiesData = cityRepositry.findBypopularIsNotNullOrderByCityNameAsc();

		Collections.sort((List<Cities>) allCitiesData);

		return (List<Cities>) allCitiesData;
	}

	public String getLoginType(String loginId) {
		return loginTypesRepositry.findOne(loginId).getLoginType();
	}
}
