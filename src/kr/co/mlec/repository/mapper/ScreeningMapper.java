package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Screening;

public interface ScreeningMapper {
	List<Screening> selectScreening(String branchCode);
	String selectScreeningDate(String screeningCode);
}
