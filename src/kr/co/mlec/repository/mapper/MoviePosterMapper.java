package kr.co.mlec.repository.mapper;

import kr.co.mlec.repository.domain.MoviePoster;

public interface MoviePosterMapper {	
	MoviePoster selectMoviePoster(int movieNo);
	void insertMoviePoster(MoviePoster poster);
	void updateMoviePoster(MoviePoster poster);
	void deleteMoviePoster(int posterNo);
}
