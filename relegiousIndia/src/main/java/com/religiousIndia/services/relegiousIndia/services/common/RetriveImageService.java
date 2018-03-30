package com.religiousIndia.services.relegiousIndia.services.common;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import org.apache.commons.codec.binary.Base64;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import com.religiousIndia.services.relegiousIndia.data.entities.Images;
import com.religiousIndia.services.relegiousIndia.data.repositry.ImageRepository;

@Service
public class RetriveImageService {
	@Autowired
	ImageRepository imageRepository;

	public void saveImage() {
		String imageNames[]={"2","3","4","5"};
		for (String image : imageNames) {
			ClassPathResource imgFile = new ClassPathResource("image/"+image+".jpg");

			byte[] arrayPic = null;
			try {
				arrayPic = new byte[(int) imgFile.contentLength()];
			} catch (IOException e1) {
				e1.printStackTrace();
			}

			try {
				imgFile.getInputStream().read(arrayPic);
			} catch (IOException e) {
				e.printStackTrace();
			}

			Images blackImage = new Images(image, "temple","jpg", arrayPic);
			imageRepository.save(blackImage);
		}
	}

	public void retriveImage() {
		List<Images> all = imageRepository.findAll();
		for (Images images : all) {
			Images image=images;
			try {
				String path = "retrieve-dir/" + images.getImageId() + ".jpg";
				Files.write(Paths.get(path), images.getImage());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		//Images images = all.get(0);

		
	}

	public String imageToBase64_2(String imageId) {
		String byteArrayString = "data:image/jpeg;base64,";
		byte[] imageArraay = retriveImageByID(imageId);
		
		byteArrayString += Base64.encodeBase64String(imageArraay);
		//System.out.println(byteArrayString);
		
		return byteArrayString;
	}
	
	public String imageToBase64() {
		File file = new File("E:/ReligiousIndia/relegiousIndia/src/main/resources/image/temple.jpg");
		String byteArrayString = "data:image/jpeg;base64,";
		try {
			FileInputStream inputStream = new FileInputStream(file);
			byte[] imageArraay = new byte[(int) file.length()];
			try {
				inputStream.read(imageArraay);
				byteArrayString += Base64.encodeBase64String(imageArraay);
				System.out.println(byteArrayString);
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return byteArrayString;
	}
	
	public byte[] retriveImageByID(String imageId){
		Images findByImageId = imageRepository.findByImageId(imageId);
		
		return findByImageId.getImage();
		
	}

}