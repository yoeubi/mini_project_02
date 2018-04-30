package kr.co.mlec.repository.mapper;

import kr.co.mlec.repository.domain.StilCut;

public interface StilCutMapper {
	StilCut selectStilCut(int movieNo);
	void insertStilCut(StilCut stilcut);
	void updateStilCut(StilCut stilcut);
	void deleteStilCut(int stilNo);
}
