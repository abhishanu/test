package com.religiousIndia.services.relegiousIndia.data.repositry;

import java.util.Map;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.CrudRepository;

import com.religiousIndia.services.relegiousIndia.data.entities.MainMenuItem;

public interface MainMenuRepositry extends CrudRepository<MainMenuItem, String> {

	/*@Query(name="{call getImageDetails(1)}", nativeQuery=true)
	Map<String,String> callProcedure();*/
	
	/*@Procedure
	Map<String,String> insertThoughts(String isActive);*/
}
