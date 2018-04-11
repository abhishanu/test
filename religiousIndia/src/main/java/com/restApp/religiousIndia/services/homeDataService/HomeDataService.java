package com.restApp.religiousIndia.services.homeDataService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.restApp.religiousIndia.data.entities.FamousThoughts;
import com.restApp.religiousIndia.data.entities.HomeBanner;
import com.restApp.religiousIndia.data.entities.MainMenuItem;
import com.restApp.religiousIndia.data.repositry.HomeBannerRepositry;
import com.restApp.religiousIndia.data.repositry.ImagesRepositry;
import com.restApp.religiousIndia.data.repositry.MainMenuRepositry;
import com.restApp.religiousIndia.data.repositry.TempleRepositry;
import com.restApp.religiousIndia.data.repositry.ThoughtRepositry;
import com.restApp.religiousIndia.services.imageServices.RetriveImageService;

@Service
public class HomeDataService {
	@Autowired
	ThoughtRepositry thoughtRepositry;
	
	@Autowired
	MainMenuRepositry mainMenuRepositry;
	
	@Autowired
	HomeBannerRepositry homeBannerRepositry;
	
	@Autowired
	RetriveImageService retriveImageService;
	
	@Autowired
	TempleRepositry templeRepositry;
	
	@Autowired
	ImagesRepositry dummyRepositry;
	
	public Iterable<FamousThoughts> getAllThoughts(){
		return thoughtRepositry.findAll();
	}
	
	public List<MainMenuItem> getHomeMenuActiveTab() {
		return mainMenuRepositry.findByisActiveEquals("1");
	} 
	
	public List<Map<String, String>> getBannerDetails() {
		Map<String, String> allBannersDetails = new HashMap<String, String>();
		List<Map<String, String>> listofBanners=new ArrayList<Map<String, String>>();
		List<HomeBanner> allBanners = homeBannerRepositry.findByisActiveEquals("1");
		for (HomeBanner homeBanner : allBanners) {
				String imageId=homeBanner.getImageId();
				allBannersDetails.put("IMAGE_ID", imageId);
				allBannersDetails.put("IMAGE_NAME", homeBanner.getBannerName());
				allBannersDetails.put("ITEM_ID", homeBanner.getItemId());
				allBannersDetails.put("SUB_ITEM_ID", homeBanner.getSubItemId());
				allBannersDetails.put("DATA_ID", homeBanner.getDataId());

				/*String base64 = retriveImageService.imageToBase64_2(imageId);
				allBannersDetails.put("ImageBase64", base64);*/
				listofBanners.add(allBannersDetails);
			
		}
		return listofBanners;
	}
	
	public List<Map<String, String>> getHomeBannerDetails() {
		
		List<Map<String, String>> listofBanners=new ArrayList<Map<String, String>>();
		
		List<HomeBanner> allBanners = homeBannerRepositry.findByisActiveEquals("1");
		for (HomeBanner homeBanner : allBanners) {
				Map<String, String> bannersDetails = new HashMap<String, String>();
				String imageId=homeBanner.getImageId();
				bannersDetails.put("IMAGE_ID", imageId);
				bannersDetails.put("BANNER_NAME", homeBanner.getBannerName());
				bannersDetails.put("ITEM_ID", homeBanner.getItemId());
				bannersDetails.put("SUB_ITEM_ID", homeBanner.getSubItemId());
				bannersDetails.put("DATA_ID", homeBanner.getDataId());
				bannersDetails.put("BANNER_DESC", homeBanner.getBannerDesc());
				String imagePath = retriveImageService.getImagePath(imageId);
				bannersDetails.put("Image_Path",imagePath );
				listofBanners.add(bannersDetails);
			
		}
		return listofBanners;		
	}
}
