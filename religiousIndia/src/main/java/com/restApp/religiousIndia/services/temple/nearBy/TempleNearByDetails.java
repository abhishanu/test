package com.restApp.religiousIndia.services.temple.nearBy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class TempleNearByDetails {
	final String mapApi = "https://maps.googleapis.com/maps/api/";

	@Value("${radius}")
	String radius;

	@Value("${apiKey}")
	String apiKey;

	RestTemplate restTemplate = new RestTemplate();

	Map<String, String> details = new HashMap<String, String>();

	public Map<String, String> getCoordinates(final String address) {
		String urlToGetAddDeatils = mapApi + "geocode/json?address=" + address + "&key=" + apiKey;
		LinkedHashMap<String, ArrayList> restResult = (LinkedHashMap<String, ArrayList>) restTemplate
				.getForObject(urlToGetAddDeatils, Object.class);

		ArrayList<LinkedHashMap<String, LinkedHashMap>> resultsList = restResult.get("results");
		LinkedHashMap<String, LinkedHashMap> hashMap = resultsList.get(0);
		LinkedHashMap<String, LinkedHashMap> list = hashMap.get("geometry");
		LinkedHashMap linkedHashMap = list.get("location");

		String latitude =  linkedHashMap.get("lat")+"";
		String longitude = linkedHashMap.get("lng")+"";

		details.put("latitude", latitude);
		details.put("longitude", longitude);

		return details;
	}

	public String getNearestRailway(final String latitude, final String longitude) {
		String urlForRailway = mapApi + "place/nearbysearch/json?location=" + latitude + "," + longitude + "& radius="
				+ radius + "&type=train_station&key=" + apiKey;
		String resultData = "";
		LinkedHashMap<String, ArrayList> restResult = (LinkedHashMap<String, ArrayList>) restTemplate
				.getForObject(urlForRailway, Object.class);

		ArrayList<LinkedHashMap<String, String>> resultsList = restResult.get("results");

		if (resultsList.size() != 0) {
			LinkedHashMap<String, String> dataMap = resultsList.get(0);
			resultData = dataMap.get("name");
		} else {
			resultData = "No data found in range of 50000m";
		}
		return resultData;
	}

	public String getNearestAirport(final String latitude, final String longitude) {
		String urlForAirports = mapApi + "place/nearbysearch/json?location=" + latitude + "," + longitude + "&radius="
				+ radius + "&type=airport&key=" + apiKey;

		//Map<String, String> resultData = new HashMap<>();
		String resultData = "";

		LinkedHashMap<String, ArrayList> restResult = (LinkedHashMap<String, ArrayList>) restTemplate
				.getForObject(urlForAirports, Object.class);

		ArrayList<LinkedHashMap<String, String>> resultsList = restResult.get("results");

		if (resultsList.size() != 0) {
			LinkedHashMap<String, String> dataMap = resultsList.get(0);
			resultData = dataMap.get("name");
		} else {
			resultData = "No data found in range of 50000m";
		}
		/*String origion = latitude + "," + longitude;
		String distance = getDistance(origion, destination);
		resultData.put("Nearest_Airport", destination);
		resultData.put("Distance", distance);*/
		return resultData;
	}

	public String getNearestBusStop(final String latitude, final String longitude) {
		String urlForBusStop = mapApi + "place/nearbysearch/json?location=" + latitude + "," + longitude + "& radius="
				+ radius + "&type=bus_station&key=" + apiKey;

		String resultData = "";

		LinkedHashMap<String, ArrayList> restResult = (LinkedHashMap<String, ArrayList>) restTemplate
				.getForObject(urlForBusStop, Object.class);

		ArrayList<LinkedHashMap<String, String>> resultsList = restResult.get("results");

		if (resultsList.size() != 0) {
			LinkedHashMap<String, String> dataMap = resultsList.get(0);
			resultData = dataMap.get("vicinity");
		} else {
			resultData = "No data found in range of 50000m";
		}
		return resultData;
	}

	// To get the distance from the given origin (can be address or in the form
	// of latitude,longitude )
	public String getDistance(final String origin, final String destination) {
		final String distanceApi = "https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins="
				+ origin + "&destinations=" + destination + "&key=" + apiKey;
		LinkedHashMap<String, ArrayList> restResult = restTemplate.getForObject(distanceApi, LinkedHashMap.class);
		ArrayList<LinkedHashMap> distanceDataObj = restResult.get("rows");

		LinkedHashMap<String, ArrayList> distanceDataObjElements = distanceDataObj.get(0);

		ArrayList<LinkedHashMap> distanceAndDuration = distanceDataObjElements.get("elements");

		LinkedHashMap<String, LinkedHashMap> detailObject = distanceAndDuration.get(0);

		LinkedHashMap distanceObj = detailObject.get("distance");

		String distance = ((Integer) distanceObj.get("value")) / 1000 + " km";

		return distance;
	}
}
