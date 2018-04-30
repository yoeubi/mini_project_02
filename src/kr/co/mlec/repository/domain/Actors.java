package kr.co.mlec.repository.domain;

public class Actors {
	//  영화고유번호
	private int movieSeq;
	//  영화배우이름
	private String movieActor;

	public int getMovieSeq() {
		return movieSeq;
	}

	public void setMovieSeq(int movieSeq) {
		this.movieSeq = movieSeq;
	}

	public String getMovieActor() {
		return movieActor;
	}

	public void setMovieActor(String movieActor) {
		this.movieActor = movieActor;
	}
}
