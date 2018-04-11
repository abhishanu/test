package com.restApp.religiousIndia.controllers.temple;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.restApp.religiousIndia.data.entities.Temple;
import com.restApp.religiousIndia.services.temple.TempleServices;

@RestController
@CrossOrigin
public class TempleController {
	@Autowired
	TempleServices templeDataServices;

	@GetMapping("/getAllTempleList")
	public List<Temple> getTempleDetails() {
		return templeDataServices.getAllActiveTempleList();
	}

}
