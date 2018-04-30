package kr.co.mlec.repository.mapper;

import kr.co.mlec.repository.domain.Actors;

public interface ActorsMapper {
	Actors selectActors(int movieNo);
}
