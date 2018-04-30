package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Location;

public interface LocationMapper {
	List<Location> selectLocation();
	String selectLocationName(String locationCode);
}
