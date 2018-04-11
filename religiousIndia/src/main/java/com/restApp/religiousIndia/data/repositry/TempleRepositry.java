package com.restApp.religiousIndia.data.repositry;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.restApp.religiousIndia.data.entities.Temple;

public interface TempleRepositry extends CrudRepository<Temple, String>{
	List<Temple> findByisActiveEquals(String isActive);
	
	Temple findByisActiveAndTempleID(String isActive,String templeId);
}
