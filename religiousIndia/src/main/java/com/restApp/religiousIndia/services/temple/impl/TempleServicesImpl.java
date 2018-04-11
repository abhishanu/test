package com.restApp.religiousIndia.services.temple.impl;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.restApp.religiousIndia.data.entities.Aarti;
import com.restApp.religiousIndia.data.entities.Address;
import com.restApp.religiousIndia.data.entities.Temple;
import com.restApp.religiousIndia.data.entities.TempleConnectivity;
import com.restApp.religiousIndia.data.entities.TempleTimings;
import com.restApp.religiousIndia.data.repositry.AartiRepositry;
import com.restApp.religiousIndia.data.repositry.AddresssRepositry;
import com.restApp.religiousIndia.data.repositry.TempleConnectivityRepositry;
import com.restApp.religiousIndia.data.repositry.TempleRepositry;
import com.restApp.religiousIndia.data.repositry.TempleTimingRepositry;
import com.restApp.religiousIndia.services.temple.TempleServices;
import com.restApp.religiousIndia.services.temple.nearBy.TempleNearByDetails;

@Service
public class TempleServicesImpl implements TempleServices{

	@Autowired
	TempleRepositry templeRepositry;
	
	@Autowired
	TempleTimingRepositry templeTimingRepositry;
	
	@Autowired
	TempleConnectivityRepositry templeConnectivityepositry;
	
	@Autowired
	TempleNearByDetails templeNearByDetails;

	@Autowired
	AartiRepositry aartiRepositry;
	
	@Autowired
	AddresssRepositry addressRepositry;
	
	@Autowired
	TempleServices templeDataServices;

	@Override
	public List<Aarti> getAartiTiming(String templeId) {
		return aartiRepositry.findByIsActiveAndTempleId("1", templeId);
	}
	
	@Override
	public TempleTimings getTempleTimings(String templeId){
		return templeTimingRepositry.findByIsActiveAndTempleID("1",templeId);
	}
	
	public TempleConnectivity getConnectivity(String addressId,String templeId){
		 TempleConnectivity connectivity = templeConnectivityepositry.findOne(addressId);
		 if (connectivity.getNearestAirport().isEmpty()||connectivity.getNearestBusStand().isEmpty()) {
			 addressRepositry.save(new Address());
		} else {

		}
		 return null;
	}
	
	@Override
	public Map<String,String> templeDetails(String templeId){
		Map<String,String> templeDetails=new LinkedHashMap<String,String>();
		
		List<Aarti> aartiTiming = getAartiTiming(templeId);
		for (Aarti aarti : aartiTiming) {
			String startTime=aarti.getStartTime();
			templeDetails.put(aarti.getAartiName(),startTime+","+""+aarti.getEndTime() );
		}
		
		
		TempleTimings templeTimings = getTempleTimings(templeId);
		Address templeAddress = addressRepositry.findByIsActiveAndId("1", templeId);
		String addressDetails = templeAddress.getAddressDetails();
		Map<String, String> coordinates = templeNearByDetails.getCoordinates(addressDetails);
		
		templeDetails.put("TempleTimings", templeTimings.getTempleTime());
		TempleConnectivity templeConnectivity = getConnectivity("1","");
		templeDetails.put("Train_Connectivity",templeConnectivity.getNearestRailwayStation());
		templeDetails.put("Bus_Stand",templeConnectivity.getNearestBusStand());
		templeDetails.put("Airport_Connectivity",templeConnectivity.getNearestAirport());
		templeDetails.put("Parking_Desc",templeConnectivity.getParkingLotDesc());
		
		return templeDetails;
	}
	
	@Override
	public List<Temple> getAllActiveTempleList(){
		return templeRepositry.findByisActiveEquals("1");
	}
	
	public Temple getTemple(String templId){
		return templeRepositry.findByisActiveAndTempleID("1",templId);
	}

	@Override
	public Map<String, ArrayList<String>> getTempleCompleteDetails() {
		return null;
	}

	public Address getTempleAddressDetails(String addressId) {
		addressRepositry.findByIsActiveAndId("1", addressId);
		return null;
	}
}
