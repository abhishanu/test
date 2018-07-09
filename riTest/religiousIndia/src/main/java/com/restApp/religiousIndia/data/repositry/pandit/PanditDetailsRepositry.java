package com.restApp.religiousIndia.data.repositry.pandit;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.restApp.religiousIndia.data.entities.pandit.PanditDetails;

public interface PanditDetailsRepositry extends CrudRepository<PanditDetails, String> {
	PanditDetails findByPanditId(String panditId);

	List<PanditDetails> findByisActiveAndPanditIdIn(String isActive, List<String> panditIdList);

	List<PanditDetails> findByisActiveEquals(String isActive);

	List<PanditDetails> findByisActiveAndUserIdIn(String isActive, List<Integer> userId);

	List<PanditDetails> findByPanditRatingGreaterThanEqualOrderByPanditRatingDesc(Double rating);
}
