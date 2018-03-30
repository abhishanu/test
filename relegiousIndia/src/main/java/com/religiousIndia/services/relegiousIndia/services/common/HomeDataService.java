package com.religiousIndia.services.relegiousIndia.services.common;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

import com.religiousIndia.services.relegiousIndia.data.entities.HomeBanner;
import com.religiousIndia.services.relegiousIndia.data.entities.MainMenuItem;
import com.religiousIndia.services.relegiousIndia.data.repositry.HomeBannerRepositry;
import com.religiousIndia.services.relegiousIndia.data.repositry.MainMenuRepositry;

@Service
public class HomeDataService {

	@Autowired
	ApplicationContext applicationContex;

	@Autowired
	MainMenuRepositry mainMenuRepositry;

	@Autowired
	HomeBannerRepositry homeBannerRepositry;

	@Autowired
	RetriveImageService retriveImageService;

	public MainMenuItem save(MainMenuItem mainMenuItem) {
		MainMenuItem saved = mainMenuRepositry.save(mainMenuItem);
		return saved;
	}

	public List<MainMenuItem> getHomeMenuTab() {
		List<MainMenuItem> list = new ArrayList<MainMenuItem>();

		Iterable<MainMenuItem> allTabs = mainMenuRepositry.findAll();

		for (MainMenuItem mainMenuItem : allTabs) {
			if (mainMenuItem.getIsActive().equals("1")) {
				list.add(mainMenuItem);
			}
		}
		return list;
	}

	public List<Map<String, String>> getBannerDetails() {
		Map<String, String> allBannersDetails = new HashMap<String, String>();
		List<Map<String, String>> listofBanners=new ArrayList<Map<String, String>>();
		Iterable<HomeBanner> allBanners = homeBannerRepositry.findAll();
		for (HomeBanner homeBanner : allBanners) {
			if (homeBanner.getIsActive().equals("1")) {
				String imageId=homeBanner.getImageId();
				allBannersDetails.put("IMAGE_ID", imageId);
				allBannersDetails.put("IMAGE_NAME", homeBanner.getImageName());
				allBannersDetails.put("ITEM_ID", homeBanner.getItemId());
				allBannersDetails.put("SUB_ITEM_ID", homeBanner.getSubItemId());
				allBannersDetails.put("DATA_ID", homeBanner.getDataId());

				String base64 = retriveImageService.imageToBase64_2(imageId);
				allBannersDetails.put("ImageBase64", base64);
				listofBanners.add(allBannersDetails);
			}

		}
		return listofBanners;

	}
	
}
