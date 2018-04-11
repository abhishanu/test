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
	private String id;

	private String state;

	private String dist;

	private String city;

	private String addressDetails;

	@Column(name = "IS_TEMPLE_ADDRESS")
	private String isTempleAddress;

	private String isActive;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getAddressDetails() {
		return addressDetails;
	}

	public void setAddressDetails(String addressDetails) {
		this.addressDetails = addressDetails;
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

}
