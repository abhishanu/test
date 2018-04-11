package com.restApp.religiousIndia.services.temple;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.restApp.religiousIndia.data.entities.Aarti;
import com.restApp.religiousIndia.data.entities.Address;
import com.restApp.religiousIndia.data.entities.Temple;
import com.restApp.religiousIndia.data.entities.TempleConnectivity;
import com.restApp.religiousIndia.data.entities.TempleTimings;

public interface TempleServices {
	public List<Aarti> getAartiTiming(String templeId);
	
	public TempleTimings getTempleTimings(String templeId);
	
	//public TempleConnectivity getConnectivity(String addressId);
	
	public Map<String,String> templeDetails(String templeId);
	
	public List<Temple> getAllActiveTempleList();
	
	public Map<String,ArrayList<String>> getTempleCompleteDetails();
	
	//public Address getTempleAddressDetails(String addressId);
}
