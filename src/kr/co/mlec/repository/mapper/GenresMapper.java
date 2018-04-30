package kr.co.mlec.repository.mapper;

import kr.co.mlec.repository.domain.Genres;

public interface GenresMapper {
	void insertGenres(Genres genres);
	Genres selectGenres(int movieNo);
}
