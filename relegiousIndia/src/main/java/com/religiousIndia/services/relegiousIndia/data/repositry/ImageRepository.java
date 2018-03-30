package com.religiousIndia.services.relegiousIndia.data.repositry;

import org.springframework.data.jpa.repository.JpaRepository;

import com.religiousIndia.services.relegiousIndia.data.entities.Images;

public interface ImageRepository extends JpaRepository<Images, Long> {
	
	Images findByImageId(String id);

}
