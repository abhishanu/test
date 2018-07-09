package com.restApp.religiousIndia.services.temple.donation;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.restApp.religiousIndia.data.entities.temple.donation.ClothesDonation;
import com.restApp.religiousIndia.data.entities.temple.donation.EducationDonation;
import com.restApp.religiousIndia.data.entities.temple.donation.FoodDonation;
import com.restApp.religiousIndia.data.entities.temple.donation.GirlChildMarriageDonation;
import com.restApp.religiousIndia.data.entities.temple.donation.MedicineDonation;
import com.restApp.religiousIndia.data.entities.temple.donation.TempleDonationCategory;
import com.restApp.religiousIndia.data.entities.temple.donation.TempleNeedsDonation;
import com.restApp.religiousIndia.data.repositry.temple.donation.ClothDonationRepositry;
import com.restApp.religiousIndia.data.repositry.temple.donation.DonationCategoryRepositry;
import com.restApp.religiousIndia.data.repositry.temple.donation.EducationDonationRepositry;
import com.restApp.religiousIndia.data.repositry.temple.donation.FoodDonationRepositry;
import com.restApp.religiousIndia.data.repositry.temple.donation.GirlChildMarriageDonationRepositry;
import com.restApp.religiousIndia.data.repositry.temple.donation.MedicineDonationRepositry;
import com.restApp.religiousIndia.data.repositry.temple.donation.TempleNeedsDonationRepositry;
import com.restApp.religiousIndia.request.filter.PostRequest;
import com.restApp.religiousIndia.services.imageServices.RetriveImageService;

@Service
public class DonationService {

	private static Logger logger = Logger.getLogger(DonationService.class);

	@Autowired
	ClothDonationRepositry clothDonationRepositry;

	@Autowired
	TempleNeedsDonationRepositry templeNeedsDonationRepositry;

	@Autowired
	GirlChildMarriageDonationRepositry girlChildMarriageDonationRepositry;

	@Autowired
	EducationDonationRepositry educationDonationRepositry;

	@Autowired
	FoodDonationRepositry foodDonationRepositry;

	@Autowired
	MedicineDonationRepositry medicineDonationRepositry;

	@Autowired
	DonationCategoryRepositry donationCategoryRepositry;

	@Autowired
	RetriveImageService retriveImageService;

	public Iterable<ClothesDonation> getAllClothDonation() {
		Iterable<ClothesDonation> findAll = clothDonationRepositry.findAll();
		return findAll;
	}

	public Iterable<TempleDonationCategory> getAllDonationCategory() {
		return donationCategoryRepositry.findByisActive("1");
	}

	public Map<String, Object> getAllDonationDetails(String templeId) {
		Iterable<TempleDonationCategory> allDonationCategory = getAllDonationCategory();
		Map<String, Object> donationSubCategoryDetails = new HashMap<>();
		for (TempleDonationCategory templeDonationCategory : allDonationCategory) {

			if (templeDonationCategory.getDonationCategoryId().equals("1")) {
				ArrayList<TempleNeedsDonation> templeNeedsDonationList = templeNeedsDonationRepositry
						.findByTempleId(templeId);
				for (TempleNeedsDonation templeNeedsDonation : templeNeedsDonationList) {
					templeNeedsDonation.setImageId(retriveImageService.getImagePath(templeNeedsDonation.getImageId()));
				}

				donationSubCategoryDetails.put(templeDonationCategory.getDonationCategoryName(),
						templeNeedsDonationList);
			}

			if (templeDonationCategory.getDonationCategoryId().equals("2")) {
				ArrayList<MedicineDonation> medicineDonationList = medicineDonationRepositry.findByTempleId(templeId);
				for (MedicineDonation medicineDonation : medicineDonationList) {
					medicineDonation.setImageId(retriveImageService.getImagePath(medicineDonation.getImageId()));
				}
				donationSubCategoryDetails.put(templeDonationCategory.getDonationCategoryName(), medicineDonationList);
			}

			if (templeDonationCategory.getDonationCategoryId().equals("3")) {
				ArrayList<FoodDonation> foodDonationList = foodDonationRepositry.findByTempleId(templeId);
				for (FoodDonation foodDonation : foodDonationList) {
					foodDonation.setImageId(retriveImageService.getImagePath(foodDonation.getImageId()));
				}
				donationSubCategoryDetails.put(templeDonationCategory.getDonationCategoryName(), foodDonationList);
			}

			if (templeDonationCategory.getDonationCategoryId().equals("4")) {
				ArrayList<EducationDonation> educationDonationList = educationDonationRepositry
						.findByTempleId(templeId);
				for (EducationDonation educationDonation : educationDonationList) {
					educationDonation.setImageId(retriveImageService.getImagePath(educationDonation.getImageId()));
				}
				donationSubCategoryDetails.put(templeDonationCategory.getDonationCategoryName(), educationDonationList);
			}

			if (templeDonationCategory.getDonationCategoryId().equals("5")) {
				ArrayList<ClothesDonation> clothesDonationList = clothDonationRepositry.findByTempleId(templeId);
				for (ClothesDonation clothesDonation : clothesDonationList) {
					clothesDonation.setImageId(retriveImageService.getImagePath(clothesDonation.getImageId()));
				}
				donationSubCategoryDetails.put(templeDonationCategory.getDonationCategoryName(), clothesDonationList);
			}

			if (templeDonationCategory.getDonationCategoryId().equals("6")) {
				ArrayList<GirlChildMarriageDonation> girlChildMarriageDonationList = girlChildMarriageDonationRepositry
						.findByTempleId(templeId);
				for (GirlChildMarriageDonation girlChildMarriageDonation : girlChildMarriageDonationList) {
					girlChildMarriageDonation
							.setImageId(retriveImageService.getImagePath(girlChildMarriageDonation.getImageId()));
				}
				donationSubCategoryDetails.put(templeDonationCategory.getDonationCategoryName(),
						girlChildMarriageDonationList);
			}
		}
		return donationSubCategoryDetails;
	}

	public Map<String, Object> donateMoney(PostRequest donateRequest) {
		Map<String, Object> map = new HashMap<>();
		if (donateRequest.getRequestType().equals("donation")) {
			Map<String, List<String>> requestParam = donateRequest.getRequestParam();

			Double ammount = new Double(requestParam.get("ammount").get(0));
			String donationSubCategoryId = requestParam.get("donationSubCategoryId").get(0);
			String templeDonationCategoryId = requestParam.get("templeDonationCategoryId").get(0);

			if (templeDonationCategoryId.equals("1")) {

				TempleNeedsDonation donation = templeNeedsDonationRepositry.findOne(donationSubCategoryId);
				if (donation != null) {
					try {
						Date endDate = donation.getEndDate();
						// Check validity of this donation
						if (endDate.after(new Date())) {
							map.put("Error", "Sorry donation for this category is closed");
						} else {
							// Check Collection is completed or not
							double requiredMoney = donation.getRequiredMoney();
							double collectedMoney = donation.getCollectedMoney();
							if (requiredMoney - collectedMoney >= ammount) {
								synchronized (templeNeedsDonationRepositry) {
									donation.setCollectedMoney(collectedMoney + ammount);
									donation.setNoOfContribuitors(donation.getNoOfContribuitors() + 1);
									map.put("Success", "Your request for donation has been placed");
								}
							} else {
								map.put("Error", "Sorry,The required ammount is completed or less than your ammount");
							}
						}
						templeNeedsDonationRepositry.save(donation);

					} catch (Exception e) {
						logger.info("Exception occured:" + e);
						map.put("Error", "Something went wrong");
					}
				}
			}

			if (templeDonationCategoryId.equals("2")) {
				MedicineDonation donation = medicineDonationRepositry.findOne(donationSubCategoryId);
				Date endDate = donation.getEndDate();
				// Check validity of this donation
				if (endDate.after(new Date())) {
					map.put("Error", "Sorry donation for this category is closed");
				} else {
					// Check Collection is completed or not
					double requiredMoney = donation.getRequiredMoney();
					double collectedMoney = donation.getCollectedMoney();
					if (requiredMoney - collectedMoney >= ammount) {
						synchronized (medicineDonationRepositry) {
							donation.setCollectedMoney(collectedMoney + ammount);
							donation.setNoOfContribuitors(donation.getNoOfContribuitors() + 1);
							map.put("Success", "Your request for donation has been placed");
						}
					} else {
						map.put("Error", "Sorry,The required ammount is completed or less than your ammount");
					}
				}
				medicineDonationRepositry.save(donation);
			}

			if (templeDonationCategoryId.equals("3")) {

				FoodDonation donation = foodDonationRepositry.findOne(donationSubCategoryId);
				Date endDate = donation.getEndDate();
				// Check validity of this donation
				if (endDate.after(new Date())) {
					map.put("Error", "Sorry donation for this category is closed");
				} else {
					// Check Collection is completed or not
					double requiredMoney = donation.getRequiredMoney();
					double collectedMoney = donation.getCollectedMoney();
					if (requiredMoney - collectedMoney >= ammount) {
						synchronized (foodDonationRepositry) {
							donation.setCollectedMoney(collectedMoney + ammount);
							donation.setNoOfContribuitors(donation.getNoOfContribuitors() + 1);
							map.put("Success", "Your request for donation has been placed");
						}
					} else {
						map.put("Error", "Sorry,The required ammount is completed or less than your ammount");
					}
				}
				foodDonationRepositry.save(donation);
			}

			if (templeDonationCategoryId.equals("4")) {

				EducationDonation donation = educationDonationRepositry.findOne(donationSubCategoryId);
				Date endDate = donation.getEndDate();
				if (endDate == null) {
					map.put("Error", "Sorry ");
				}
				// Check validity of this donation
				if (endDate.after(new Date())) {
					map.put("Error", "Sorry donation for this category is closed");
				} else {
					// Check Collection is completed or not
					double requiredMoney = donation.getRequiredMoney();
					double collectedMoney = donation.getCollectedMoney();
					if (requiredMoney - collectedMoney >= ammount) {
						synchronized (educationDonationRepositry) {
							donation.setCollectedMoney(collectedMoney + ammount);
							donation.setNoOfContribuitors(donation.getNoOfContribuitors() + 1);
							map.put("Success", "Your request for donation has been placed");
						}
					} else {
						map.put("Error", "Sorry,The required ammount is completed or less than your ammount");
					}
				}
				educationDonationRepositry.save(donation);
			}

			if (templeDonationCategoryId.equals("5")) {

				ClothesDonation donation = clothDonationRepositry.findOne(donationSubCategoryId);
				Date endDate = donation.getEndDate();
				// Check validity of this donation
				if (endDate.after(new Date())) {
					map.put("Error", "Sorry donation for this category is closed");
				} else {
					// Check Collection is completed or not
					double requiredMoney = donation.getRequiredMoney();
					double collectedMoney = donation.getCollectedMoney();
					if (requiredMoney - collectedMoney >= ammount) {
						synchronized (clothDonationRepositry) {
							donation.setCollectedMoney(collectedMoney + ammount);
							donation.setNoOfContribuitors(donation.getNoOfContribuitors() + 1);
							map.put("Success", "Your request for donation has been placed");
						}
					} else {
						map.put("Error", "Sorry,The required ammount is completed or less than your ammount");
					}
				}
				clothDonationRepositry.save(donation);
			}

			if (templeDonationCategoryId.equals("6")) {

				GirlChildMarriageDonation donation = girlChildMarriageDonationRepositry.findOne(donationSubCategoryId);
				Date endDate = donation.getEndDate();
				// Check validity of this donation
				if (endDate.after(new Date())) {
					map.put("Error", "Sorry donation for this category is closed");
				} else {
					// Check Collection is completed or not
					double requiredMoney = donation.getRequiredMoney();
					double collectedMoney = donation.getCollectedMoney();
					if (requiredMoney - collectedMoney >= ammount) {
						synchronized (girlChildMarriageDonationRepositry) {
							donation.setCollectedMoney(collectedMoney + ammount);
							donation.setNoOfContribuitors(donation.getNoOfContribuitors() + 1);
							map.put("Success", "Your request for donation has been placed");
						}
					} else {
						map.put("Error", "Sorry,The required ammount is completed or less than your ammount");
					}
				}
				girlChildMarriageDonationRepositry.save(donation);
			}
		}
		return map;
	}
}
