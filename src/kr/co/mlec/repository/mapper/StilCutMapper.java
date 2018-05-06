package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.StilCut;

public interface StilCutMapper {
	List<StilCut> selectStilCut(int movieNo);
	void insertStilCut(StilCut stilcut);
	void updateStilCut(StilCut stilcut);
	void deleteStilCut(int stilNo);
}
