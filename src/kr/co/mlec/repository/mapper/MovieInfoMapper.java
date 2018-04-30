package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.MovieInfo;

public interface MovieInfoMapper {
	void insertMovieInfo(MovieInfo movieinfo);
	List<MovieInfo> selectMovieInfo();
	MovieInfo selectMovieInfoByRank(int movieNo);
}
