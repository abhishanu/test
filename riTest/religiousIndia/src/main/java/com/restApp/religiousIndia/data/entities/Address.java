package com.restApp.religiousIndia.data.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "RI_ADDRESS")
public class Address {
	@Id
	@Column(name = "ADDRESS_ID")
	private String addressID;

	private String state;

	private String dist;

	private String city;

	@Column(name = "ADDRESS_DETAIL")
	private String addressDetail;

	@Column(name = "IS_TEMPLE_ADDRESS")
	private String isTempleAddress;

	private String isActive;
	
	@Column(name="City_Id")
	private String cityId;

	public String getId() {
		return addressID;
	}

	public void setId(String id) {
		this.addressID = id;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getDist() {
		return dist;
	}

	public void setDist(String dist) {
		this.dist = dist;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddressDetail() {
		return addressDetail;
	}

	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}

	public String getIsTempleAddress() {
		return isTempleAddress;
	}

	public void setIsTempleAddress(String isTempleAddress) {
		this.isTempleAddress = isTempleAddress;
	}

	public String getIsActive() {
		return isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	public String getCityId() {
		return cityId;
	}

	public void setCityId(String cityId) {
		this.cityId = cityId;
	}

}
