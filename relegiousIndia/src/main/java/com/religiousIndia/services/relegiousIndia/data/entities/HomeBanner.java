package com.religiousIndia.services.relegiousIndia.data.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="RI_HOME_BANNER")
public class HomeBanner {
	@Id
	@Column(name = "IMAGE_ID")
	private String imageId;

	@Column(name = "IMAGE_NAME")
	private String imageName;

	private String itemId;
	private String subItemId;

	private String dataId;
	private String isActive;

	public String getImageId() {
		return imageId;
	}

	public void setImageId(String imageId) {
		this.imageId = imageId;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public String getItemId() {
		return itemId;
	}

	public void setItemId(String itemId) {
		this.itemId = itemId;
	}

	public String getSubItemId() {
		return subItemId;
	}

	public void setSubItemId(String subItemId) {
		this.subItemId = subItemId;
	}

	public String getDataId() {
		return dataId;
	}

	public void setDataId(String dataId) {
		dataId = this.dataId;
	}

	public String getIsActive() {
		return isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	@Override
	public String toString() {
		return "HomeBanner [imageId=" + imageId + ", imageName=" + imageName + ", itemId=" + itemId + ", subItemId="
				+ subItemId + ", DataId=" + dataId + ", isActive=" + isActive + "]";
	}

}
