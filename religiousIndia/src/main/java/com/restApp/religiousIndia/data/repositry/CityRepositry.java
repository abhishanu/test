package com.restApp.religiousIndia.data.repositry;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.restApp.religiousIndia.data.entities.Cities;

@Repository
public interface CityRepositry extends CrudRepository<Cities,Long> {

}
