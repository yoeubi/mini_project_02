package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Genres;

public interface GenresMapper {
	void insertGenres(Genres genres);
	List<Genres> selectGenres(int movieNo);
}
