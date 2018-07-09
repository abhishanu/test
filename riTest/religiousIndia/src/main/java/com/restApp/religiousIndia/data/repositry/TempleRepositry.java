package com.restApp.religiousIndia.data.repositry;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.restApp.religiousIndia.data.entities.Temple;

public interface TempleRepositry extends CrudRepository<Temple, String> {
	List<Temple> findByisActiveEquals(String isActive);

	Temple findByisActiveAndTempleId(String isActive, String templeId);

	List<Temple> findByTempleAddressIdIn(List<String> addressIdList);

	List<Temple> findByisActiveAndTempleIdIn(String isActive, List<String> templeIdList);

	public static final String Image_Galley = "SELECT Image_Gallery FROM ri_temple img where img.temple_id = ?1";

	@Query(value = Image_Galley, nativeQuery = true)
	public String findImageGallery(String templeId);

	List<Temple> findByTempleIdIn(List<String> templesIdList);
}
