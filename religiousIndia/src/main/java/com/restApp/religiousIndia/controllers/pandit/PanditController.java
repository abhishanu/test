package com.restApp.religiousIndia.controllers.pandit;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.restApp.religiousIndia.data.entities.pandit.PanditDetails;
import com.restApp.religiousIndia.data.entities.pandit.PanditTempleAssociation;
import com.restApp.religiousIndia.data.entities.users.UserDetailsImpl;
import com.restApp.religiousIndia.data.repositry.language.LanguageRepositry;
import com.restApp.religiousIndia.data.repositry.pandit.PanditDetailsRepositry;
import com.restApp.religiousIndia.data.repositry.users.UserDetailsRepositry;
import com.restApp.religiousIndia.request.filter.PostRequest;
import com.restApp.religiousIndia.request.filter.PostRequestWithOutArray;
import com.restApp.religiousIndia.response.Response;
import com.restApp.religiousIndia.response.status.ResponseStatus;
import com.restApp.religiousIndia.services.imageServices.RetriveImageService;
import com.restApp.religiousIndia.services.pandit.PanditDataService;
import com.restApp.religiousIndia.services.pooja.PoojaServices;

@RestController
@CrossOrigin
// @SessionAttributes("name")
public class PanditController {
	private static Logger logger = Logger.getLogger(PanditController.class);
	@Autowired
	PanditDetailsRepositry panditDetailsRepositry;

	@Autowired
	RetriveImageService reetriveImageService;

	@Autowired
	UserDetailsRepositry userDetailsRepositry;

	@Autowired
	PanditDataService panditDataService;

	@Autowired
	PoojaServices poojaServices;

	@Autowired
	LanguageRepositry languageRepositry;

	@GetMapping("/getPanditAssociatedWithTemple/{templeId}")
	public ResponseEntity<Response> getPanditAssociatedWithTemple(@PathVariable("templeId") String templeId) {
		Response response = new Response();
		try {
			List<PanditTempleAssociation> panditsInTemple = panditDataService.getPanditsInTemple(templeId);
			List<Map<String, Object>> panditDetailsList = new ArrayList<>();
			String panditId = "";
			String imagePath = "";
			UserDetailsImpl userDetails = null;
			for (PanditTempleAssociation panditTempleAssociation : panditsInTemple) {
				Map<String, Object> map = new HashMap<>();
				panditId = panditTempleAssociation.getPanditId();
				PanditDetails panditDetails = panditDetailsRepositry.findByPanditId(panditId);
				userDetails = userDetailsRepositry.findByPanditId(panditId);
				map.put("PanditId", panditId);
				map.put("PostInTemple", panditTempleAssociation.getPanditPostInTemple());
				map.put("PanditCategory", panditDetails.getPanditCategoryId());

				map.put("Location", userDetails.getLocation());
				String middleName = userDetails.getMiddleName();
				if (middleName == null) {
					middleName = "";
				}
				String name = userDetails.getFirstName() + " " + middleName + " " + userDetails.getLastName();

				map.put("Name", name);

				imagePath = reetriveImageService.getImagePath(panditDetails.getImageId());
				map.put("ImageId", imagePath);
				panditDetailsList.add(map);
			}
			response.setStatus(ResponseStatus.OK);
			response.setResponse(panditDetailsList);
			return ResponseEntity.ok(response);
		} catch (Exception e) {
			response.setStatus(ResponseStatus.ERROR);
			response.setResponse("Something went wrong");
			return ResponseEntity.ok(response);
		}
	}

	@PostMapping("/getPanditByFilters")
	public ResponseEntity<Response> getPanditByFilters(@RequestBody PostRequest filterRequest) {
		Response response = new Response();
		List<Map<String, Object>> panditByFilters = null;
		if (filterRequest != null) {
			logger.info("Pandit(s) under Filter criteria:" + filterRequest.getRequestParam());

			panditByFilters = panditDataService.getPanditByFilters(filterRequest);
			if (panditByFilters != null) {
				response.setStatus(ResponseStatus.OK);
				response.setResponse(panditByFilters);
			} else {
				response.setStatus(ResponseStatus.NO_DATA_FOUND);
				response.setResponse("No record found");
			}
		} else {
			logger.debug("No Pandit Found in the particular filter data");
			response.setStatus(ResponseStatus.BAD_REQUEST);
			response.setResponse("request is invalid");
		}
		return ResponseEntity.ok(response);
	}

	@PostMapping("/servicesOrPanditReview")
	public ResponseEntity<Response> saveServicesOrPanditReview(@RequestBody PostRequestWithOutArray reviewRequest/*
																													 * ,
																													 * HttpServletRequest
																													 * request
																													 */) {
		Response response = new Response();
		/*
		 * if (request.getAttribute("userId") == null) {
		 * response.setStatus(ResponseStatus.ERROR);
		 * response.setResponse("Invalid User"); return
		 * ResponseEntity.ok(response); } else {
		 */

		if (reviewRequest.getRequestType().equalsIgnoreCase("panditReview")) {
			Map<String, String> requestParam = reviewRequest.getRequestParam();
			boolean isSaved = panditDataService.savePanditReview(requestParam);
			if (isSaved) {
				response.setStatus(ResponseStatus.OK);
				response.setResponse("Saved Successfully");
				return ResponseEntity.ok(response);
			} else {
				response.setStatus(ResponseStatus.INTERNAL_SERVER_ERROR);
				response.setResponse("Something went wrong.Please try again later");
				return ResponseEntity.ok(response);
			}
		}

		if (reviewRequest.getRequestType().equalsIgnoreCase("poojaReview")) {
			Map<String, String> requestParam = reviewRequest.getRequestParam();

			boolean isSaved = poojaServices.savePoojaReview(requestParam);
			if (isSaved) {
				response.setStatus(ResponseStatus.OK);
				response.setResponse("Saved Successfully");
				return ResponseEntity.ok(response);
			} else {
				response.setStatus(ResponseStatus.INTERNAL_SERVER_ERROR);
				response.setResponse("Something went wrong.Please try again later");
				return ResponseEntity.ok(response);
			}
		}

		response.setStatus(ResponseStatus.INVALID);
		response.setResponse("No such request param found");
		return ResponseEntity.ok(response);

	}
	// }

	/*
	 * @GetMapping("/getPanditReview/{panditId}") public
	 * ResponseEntity<ResponseWithExtraDetails> getServicesOrPanditReview(
	 * 
	 * @PathVariable("panditId") String panditId) { return
	 * ResponseEntity.ok(panditDataService.getPanditReview(panditId)); }
	 */

	@GetMapping("/getPanditDetails/{panditId}")
	public ResponseEntity<Response> getPanditDetails(@PathVariable("panditId") String panditId) {
		logger.info("Pandit Details for panditId:" + panditId);
		Response response = new Response();
		Map<String, Object> panditDetails = panditDataService.getPanditDetails(panditId);
		if (panditDetails != null) {
			response.setStatus(ResponseStatus.OK);
			response.setResponse(panditDetails);
			return ResponseEntity.ok(response);
		}
		response.setStatus(ResponseStatus.NO_DATA_FOUND);
		response.setResponse("Data not found");
		return ResponseEntity.ok(response);
	}

	/*@GetMapping("/getPanditSchedule/{panditId}")
	public ResponseEntity<Response> getPanditAvailibilityDetails(@PathVariable("panditId") String panditId) {
		return ResponseEntity.ok(panditDataService.panditSchedule(panditId));
	}*/

	@GetMapping("/getPanditAwardsDetails/{panditId}")
	public ResponseEntity<Response> getPanditAwardsDetails(@PathVariable("panditId") String panditId) {
		return ResponseEntity.ok(panditDataService.getPanditAwardsDetails(panditId));
	}

	@GetMapping("/getPanditPoojaServices/{panditId}")
	public ResponseEntity<Response> getPanditPoojaServices(@PathVariable("panditId") String panditId) {
		Response panditPoojaServices = panditDataService.getPanditPoojaServices(panditId);
		return ResponseEntity.ok(panditPoojaServices);
	}

	@GetMapping("getPanditArticles/{panditId}")
	public ResponseEntity<Response> getPanditArticles(@PathVariable("panditId") String panditId) {
		Response panditArticles = panditDataService.getPanditArticles(panditId);
		return ResponseEntity.ok(panditArticles);
	}

}
