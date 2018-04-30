package kr.co.mlec.repository.mapper;

import kr.co.mlec.repository.domain.Trailer;

public interface TrailerMapper {
	Trailer selectTrailer(int movieNo);
	void insertTrailer(Trailer trailer);
	void updateTrailer(Trailer trailer);
	void deleteTrailer(int trailerNo);
}
