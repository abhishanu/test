package com.restApp.religiousIndia.controllers.temple.donation;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.restApp.religiousIndia.data.entities.temple.donation.TempleDonationCategory;
import com.restApp.religiousIndia.data.repositry.temple.donation.ClothDonationRepositry;
import com.restApp.religiousIndia.data.repositry.temple.donation.TempleDonationDetailsRepositry;
import com.restApp.religiousIndia.request.filter.PostRequest;
import com.restApp.religiousIndia.response.Response;
import com.restApp.religiousIndia.response.status.ResponseStatus;
import com.restApp.religiousIndia.services.temple.donation.DonationService;

@RestController
@CrossOrigin
public class DonationController {

	@Autowired
	TempleDonationDetailsRepositry templeDonationDetailsRepositry;

	@Autowired
	DonationService donationService;

	@Autowired
	ClothDonationRepositry clothDonationRepositry;

	@GetMapping("/getAllDonationCategory")
	public Iterable<TempleDonationCategory> getAllDonationCategory() {
		return donationService.getAllDonationCategory();
	}

	@GetMapping("/getAllDonationDetails/{templeId}")
	public Map<String, Object> getAllDonationDetails(@PathVariable("templeId") String templeId) {
		return donationService.getAllDonationDetails(templeId);
	}

	@PostMapping("/donateMoney")
	public ResponseEntity<Response> donateMoney(@RequestBody PostRequest donateRequest) {
		Response response = new Response();
		Map<String, Object> map = donationService.donateMoney(donateRequest);
		if (map.get("Error") != null) {
			response.setStatus(ResponseStatus.ERROR);
			response.setResponse(map.get("Error"));
		} else {
			response.setStatus(ResponseStatus.OK);
			response.setResponse(map.get("Success"));
		}
		return ResponseEntity.ok(response);
	}
}
