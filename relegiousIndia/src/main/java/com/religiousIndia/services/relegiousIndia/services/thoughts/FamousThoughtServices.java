package com.religiousIndia.services.relegiousIndia.services.thoughts;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.religiousIndia.services.relegiousIndia.data.entities.FamousThoughts;
import com.religiousIndia.services.relegiousIndia.data.repositry.ThoughtRepositry;

@Service
public class FamousThoughtServices {
	@Autowired
	ThoughtRepositry thoughtRepositry;
	
	public Iterable<FamousThoughts> getThoughts(){
		Iterable<FamousThoughts> allThoughts = thoughtRepositry.findAll();
		return allThoughts;
	}
}
