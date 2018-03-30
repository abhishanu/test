package com.religiousIndia.services.relegiousIndia.data.repositry;

import java.util.List;
import java.util.Map;

import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface ProceduresRepositry extends CrudRepository<List< Map<String, String>>, Integer>{
	
	@Procedure
	List< Map<String, String>> getImageDetails(@Param("id") String id);
}
