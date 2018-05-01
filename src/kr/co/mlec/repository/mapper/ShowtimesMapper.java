package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Showtimes;

public interface ShowtimesMapper {
	List<Showtimes> selectShowtimes(String theaterCode);
	String selectShowTime(String showCode);
}
