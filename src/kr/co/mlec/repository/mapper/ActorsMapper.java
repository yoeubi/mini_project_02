package kr.co.mlec.repository.mapper;

import kr.co.mlec.repository.domain.Actors;
import kr.co.mlec.repository.domain.Genres;

public interface ActorsMapper {
	void insertGenres(Genres genres);
	Actors selectActors(int movieNo);
}
