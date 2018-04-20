package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Confirm;

public interface ConfirmMapper {
	void insertConfirm(Confirm confirm);
	List<Confirm> selectConfirm();
}
