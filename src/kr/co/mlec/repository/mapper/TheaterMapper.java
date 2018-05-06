package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Theater;

public interface TheaterMapper {
	List<Theater> selectTheater(String filmCode);
	Theater selectTheaterOne(String theaterCode);
	void updateSeat(Theater theater);
}
