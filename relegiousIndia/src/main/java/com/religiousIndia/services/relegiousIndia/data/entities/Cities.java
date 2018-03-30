package com.religiousIndia.services.relegiousIndia.data.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Cities {

	@Id
	private Long id;

	private String cityName;
	private String district;

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	@Override
	public String toString() {
		return "Cities [id=" + id + ", cityName=" + cityName + ", district=" + district + "]";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}
}
