package com.restApp.religiousIndia.data.repositry.common;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.restApp.religiousIndia.data.entities.pandit.PanditDetails;

@Repository
@Transactional
public class CommonRepositry {
	@PersistenceContext
	EntityManager entityManager;

	public PanditDetails findById(String id) {
		PanditDetails details = entityManager.find(PanditDetails.class, id);
		return details;
	}

	/*
	 * public Person update(Person person) { return entityManager.merge(person);
	 * }
	 */
}
