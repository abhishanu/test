package com.restApp.religiousIndia.data.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Test implements Serializable{

	@Id
	private String id;

	@Column(columnDefinition = "TEXT", name = "obj")
	private String obj;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getObj() {
		return obj;
	}

	public void setObj(String obj) {
		this.obj = obj;
	}
}
