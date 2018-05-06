package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.MoviePoster;

public interface MoviePosterMapper {	
	List<MoviePoster> selectMoviePosterAll();
	List<MoviePoster> selectMoviePoster(int movieNo);
	MoviePoster selectMoviePosterBySeq(int movieSeq);
	void insertMoviePoster(MoviePoster poster);
	void updateMoviePoster(MoviePoster poster);
	void deleteMoviePoster(int posterNo);
}
