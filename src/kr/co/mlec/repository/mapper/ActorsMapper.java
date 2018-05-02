package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Actors;

public interface ActorsMapper {
	void insertActors(Actors act);
	List<Actors> selectActors(int movieNo);
}
