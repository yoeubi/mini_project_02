package kr.co.mlec.repository.mapper;

import kr.co.mlec.repository.domain.Actors;
import kr.co.mlec.repository.domain.Genres;

public interface ActorsMapper {
	void insertActors(Actors act);
	Actors selectActors(int movieNo);
}
