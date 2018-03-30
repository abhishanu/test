package com.religiousIndia.services.relegiousIndia.data.repositry;

import org.springframework.data.repository.CrudRepository;

import com.religiousIndia.services.relegiousIndia.data.entities.FamousThoughts;

public interface ThoughtRepositry extends CrudRepository<FamousThoughts, String> {

}
