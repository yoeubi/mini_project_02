package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Film;


public interface FilmMapper {
	List<Film> selectFilms(String screeningCode);
	String selectFilmName(String filmCode);
}
