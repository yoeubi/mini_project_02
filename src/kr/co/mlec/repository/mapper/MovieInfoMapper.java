package kr.co.mlec.repository.mapper;

import kr.co.mlec.repository.domain.MovieInfo;

public interface MovieInfoMapper {
	MovieInfo selectMovieInfo();
	MovieInfo selectMovieInfoByRank(int movieNo);
}
