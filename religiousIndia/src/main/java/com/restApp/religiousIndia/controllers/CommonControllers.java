package com.restApp.religiousIndia.controllers;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.restApp.religiousIndia.data.entities.Aarti;
import com.restApp.religiousIndia.data.entities.Cities;
import com.restApp.religiousIndia.data.entities.FamousThoughts;
import com.restApp.religiousIndia.data.entities.MainMenuItem;
import com.restApp.religiousIndia.services.common.CommonDataService;
import com.restApp.religiousIndia.services.homeDataService.HomeDataService;
import com.restApp.religiousIndia.services.imageServices.RetriveImageService;
import com.restApp.religiousIndia.services.temple.TempleServices;
import com.restApp.religiousIndia.services.temple.nearBy.TempleNearByDetails;

@RestController
@CrossOrigin
public class CommonControllers {
	@Autowired
	CommonDataService commonDataService;
	
	@Autowired
	HomeDataService homeDataService;
	
	@Autowired
	RetriveImageService retriveImageService;
	
	@Autowired
	TempleServices templeServices;
	
	@Autowired
	TempleNearByDetails nearByDetails;
	
	@GetMapping("/getAllCities")
	public Iterable<Cities> getAllCities(){
		return commonDataService.getAllCities();
	}
	
	@GetMapping("/getAllThoughts")
	public Iterable<FamousThoughts> getAllThoughts(){
		return homeDataService.getAllThoughts();
	}
	
	@GetMapping("/getAllHomeMenuTabs")
	public List<MainMenuItem> getActiveMainMenuItems(){
		return homeDataService.getHomeMenuActiveTab();
	}
	
	@GetMapping("/getHomeBannerDetails")
	public List<Map<String, String>> getHomeBannerDetails() {
		List<Map<String, String>> bannerDetails = homeDataService.getBannerDetails();
		//TO Do remove sysout
		/*System.out.println(bannerDetails.get(1).get("ImageBase64"));
		System.out.println("Total Banners::" + bannerDetails.size());*/
		return bannerDetails;
	}
	
	@GetMapping("/retriveImagesToLocalDir")
	public void retriveImage() {
		retriveImageService.retriveImage();
	}
	
	@GetMapping("/getBannerDetails")
	public List<Map<String,String>> getBannerDetails(){
		List<Map<String, String>> homeBannerDetails = homeDataService.getHomeBannerDetails();
		return homeBannerDetails;
	}
	
	@GetMapping("/aartiTiming/{id}")
	public List<Aarti> getAartiTimings(@PathVariable("id") String templeId){
		return templeServices.getAartiTiming(templeId);
	}
	
	@GetMapping("/CompleteTempleDetails")
	public Map<String, String> getTempleDetails(){
		return templeServices.templeDetails("2");
	}
	
	@GetMapping("/nearestAirport")
	public String nearestAirport(){
		Map<String, String> coordinates = nearByDetails.getCoordinates("Badrinath Temple");
		String latitude = coordinates.get("latitude");
		String longitude = coordinates.get("longitude");
		return nearByDetails.getNearestAirport(latitude,longitude);
	}
	
	@GetMapping("/nearestRailway")
	public String nearestRailway(){
		Map<String, String> coordinates = nearByDetails.getCoordinates("Badrinath Temple");
		String latitude = coordinates.get("latitude");
		String longitude = coordinates.get("longitude");
		return nearByDetails.getNearestRailway(latitude,longitude);
	}
	
	@GetMapping("/nearestBusStop")
	public String nearestBusStop(){
		Map<String, String> coordinates = nearByDetails.getCoordinates("Badrinath Temple");
		String latitude = coordinates.get("latitude");
		String longitude = coordinates.get("longitude");
		return nearByDetails.getNearestBusStop(latitude,longitude);
	}
	
	/*@GetMapping("/test")
	public Map<String,Double> test4(String address){
		return nearByDetails.getCoordinates("Badrinath Temple");
	}*/
	

	@GetMapping("/getDistance")
	public String getDistance(){
		return nearByDetails.getDistance("Badrinath Temple","New Delhi,IND");
	}
}
