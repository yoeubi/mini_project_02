package kr.co.mlec.repository.mapper;

import kr.co.mlec.repository.domain.MovieInfo;

public interface MovieInfoMapper {
	void insertMovieInfo(MovieInfo movieinfo);
	MovieInfo selectMovieInfo();
	MovieInfo selectMovieInfoByRank(int movieNo);
}
