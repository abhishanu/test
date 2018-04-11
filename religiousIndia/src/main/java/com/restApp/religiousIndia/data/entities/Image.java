package com.restApp.religiousIndia.data.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "RI_IMAGE")
public class Image {
	@Id
	private String imageId;

	private String imageType;

	private String imagePath;

	public String getImageId() {
		return imageId;
	}

	public void setImageId(String imageId) {
		this.imageId = imageId;
	}

	public String getImageType() {
		return imageType;
	}

	public void setImageType(String imageType) {
		this.imageType = imageType;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	@Override
	public String toString() {
		return "dummy [imageId=" + imageId + ", imageType=" + imageType + ", imagePath=" + imagePath + "]";
	}

}
