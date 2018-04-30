package kr.co.mlec.repository.mapper;

import kr.co.mlec.repository.domain.Genres;

public interface GenresMapper {
	Genres selectGenres(int movieNo);
}
