package com.religiousIndia.services.relegiousIndia.controllers;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.religiousIndia.services.relegiousIndia.data.entities.Cities;
import com.religiousIndia.services.relegiousIndia.data.entities.FamousThoughts;
import com.religiousIndia.services.relegiousIndia.data.entities.HomeBanner;
import com.religiousIndia.services.relegiousIndia.data.entities.MainMenuItem;
import com.religiousIndia.services.relegiousIndia.data.repositry.ProceduresRepositry;
import com.religiousIndia.services.relegiousIndia.services.common.CitiesDataService;
import com.religiousIndia.services.relegiousIndia.services.common.HomeDataService;
import com.religiousIndia.services.relegiousIndia.services.common.RetriveImageService;
import com.religiousIndia.services.relegiousIndia.services.thoughts.FamousThoughtServices;

@RestController
public class CommonServicesController {

	@Autowired
	ApplicationContext applicationContex;

	@Autowired
	CitiesDataService citiesDataService;

	@Autowired
	RetriveImageService retriveImageService;

	@Autowired
	HomeDataService homeDataService;
	
	@Autowired
	FamousThoughtServices famousThoughtServices;
	
	@Autowired
	ProceduresRepositry proceduresRepositry;

	@GetMapping("/cities")
	public Iterable<Cities> allCities() {
		Iterable<Cities> allCities = citiesDataService.getAllCities();
		return allCities;
	}
	
	@GetMapping("/getHomeTabs")
	public List<MainMenuItem> getHomeTabs() {
		List<MainMenuItem> homeMenuTabs = homeDataService.getHomeMenuTab();
		return homeMenuTabs;
	}

	@GetMapping("/saveImage")
	public void saveImage() {
		retriveImageService.saveImage();
	}

	@GetMapping("/saveHome")
	public MainMenuItem saveData() {
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		Date date = new Date();
		MainMenuItem mainMenuItem = new MainMenuItem();
		mainMenuItem.setItemId("6");
		mainMenuItem.setItemName("BLOG");
		mainMenuItem.setIsActive("1");
		/*
		 * mainMenuItem.setCreatedBy(""); mainMenuItem.setUpdatedBy("");
		 * mainMenuItem.setCreatedOn(date); mainMenuItem.setUpdatedOn(date);
		 */
		homeDataService.save(mainMenuItem);
		return mainMenuItem;
	}

	@GetMapping("/convert")
	public String convertImage() {
		return retriveImageService.imageToBase64();
	}
	
	@GetMapping("/retriveImage")
	public void retriveImage(){
		retriveImageService.retriveImage();
	}
	
	@GetMapping("/getBannerDetails")
	public List<Map<String, String>> getBannerDetails(){
		List<Map<String, String>> bannerDetails = homeDataService.getBannerDetails();
		System.out.println("Total Banners::"+bannerDetails.size());
		return bannerDetails;
		
	}
	
	@GetMapping("/image/{id}")
	public void getImageByID(@PathVariable("id") String id){
		byte[] retriveImageByID = retriveImageService.retriveImageByID(id);
		System.out.println(retriveImageByID);
	}
	
	@GetMapping("/allThoughts")
	public Iterable<FamousThoughts> getAllThoughts(){
		Iterable<FamousThoughts> thoughts = famousThoughtServices.getThoughts();
		return thoughts;
		
	}
	
	@GetMapping("/test/{id}")
	public	List< Map<String, String>> getImageDetails(@PathVariable("id") String id){
		List< Map<String, String>> details = proceduresRepositry.getImageDetails(id);
		return details;
	} 
	
}
